require "bundler/capistrano"
require "rvm/capistrano"

ssh_options[:forward_agent] = true
set :ssh_options, { :forward_agent => true }
default_run_options[:pty] = true

set :application, "recstache.com"
set :scm, :git
set :scm_verbose, true
set :repository,  "git@github.com:chicohernando/recstache.git"
set :user, "deploy"
set :use_sudo, false
set :deploy_to, '/var/www'
set :deploy_via, :remote_cache
set :rails_env, "production"
set :keep_releases, 5

# Add RVM's lib directory to the load path.
$:.unshift(File.expand_path('./lib', '/usr/share/ruby-rvm'))
set :rvm_ruby_string, '1.9.3-p194'
set :rvm_type, :system

role :web, 'recstache.com'                          # Your HTTP server, Apache/etc
role :app, 'recstache.com'                          # This may be the same as your `Web` server
role :db,  'recstache.com', :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"


# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
  after 'deploy:update', 'deploy:cleanup'
  after 'deploy:update_code', 'deploy:migrate'
end

namespace :uploads do
	task :setup, :except => { :no_release => true } do
    dirs = uploads_dirs.map { |d| File.join(shared_path, d) }
    run "#{try_sudo} mkdir -p #{dirs.join(' ')} && #{try_sudo} chmod g+w #{dirs.join(' ')}"
  end

  task :symlink, :except => { :no_release => true } do
    run "rm -rf #{release_path}/public/system"
    run "ln -nfs #{shared_path}/system #{release_path}/public/system"
  end

  task :register_dirs do
    set :uploads_dirs,    %w(system)
    set :shared_children, fetch(:shared_children) + fetch(:uploads_dirs)
  end

  after       "deploy:finalize_update", "uploads:symlink"
  on :start,  "uploads:register_dirs"
end