class StaticPagesController < ApplicationController
  def index
    @users = User.order('raised DESC').all
  end
end
