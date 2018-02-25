class UsersController < ApplicationController
    include UsersHelper
    protect_from_forgery

    def create
      @user = User.new
      @user = User.new(user_params)
      @user.save
      if @user.save
      redirect_to login_path, alert: "New user - '#{@user.username}' added!"
      else
        redirect_to new_user_path, alert: "Fill all the forms"
      end
    end

    def show
      if current_user.id === 1
        
        redirect_to users_path
      else
      @user = User.find(current_user.id)
      @hints = Hint.where(user_id: current_user.id)
      @comments = Comment.where(user_id: current_user.id)
      @score = @hints.length * 20 + @comments.length / 10
      end
    end

    def index
      users_ratings
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    end

    def reviews
      render 'reviews'
    end
end
