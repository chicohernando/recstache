require "bundler/capistrano"
# require "rvm/capistrano"

set :default_environment, {
    'PATH' => "/home/easander/.gems/bin:/usr/lib/ruby/gems/1.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games"
}

ssh_options[:forward_agent] = true
set :ssh_options, { :forward_agent => true }

set :user, "easander"
set :domain, "recstache.com"
set :project, "recstache"
set :application, "recstache.com"
set :applicationdir, "/home/#{user}/#{application}"

set :repository,  "git@github.com:chicohernando/recstache"
set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
set :deploy_to, applicationdir
set :deploy_via, :remote_cache
set :git_enable_submodules, 1
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

default_run_options[:pty] = true
set :chmod755, "app config db lib public vendor script script/* public/disp*"
set :use_sudo, false

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
