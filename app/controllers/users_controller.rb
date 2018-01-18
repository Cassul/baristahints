class UsersController < ApplicationController
    include UsersHelper
    protect_from_forgery

    def create
      if params[:username].length > 1 && params[:email].length > 1 && params[:password].length > 1
        @user = User.new
        @user = User.new(user_params)
        @user.save
      flash.notice = "New user - '#{@user.username}' added!"
      redirect_to login_path
      else 
        flash.notice = "all fields required"
        render 'new'
      end
    end

    def show
      @user = User.find(current_user.id)
      @hints = Hint.where(user_id: current_user.id)
      @comments = Comment.where(user_id: current_user.id)
      @score = @hints.length * 20 + @comments.length / 10
    end

   
end
