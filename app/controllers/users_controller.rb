class UsersController < ApplicationController
    include UsersHelper
    protect_from_forgery

    def create
      @user = User.new
      @user = User.new(user_params)
      @user.save
      flash.notice = "New user - '#{@user.username}' added!"
      redirect_to '/login'
    end

    def show
      
    end

   
end
