class HintsController < ApplicationController
  include HintsHelper
  def index
    @hints = Hint.all
  end

  def show 
    @hint = Hint.find(params[:id])
    @c = Comment.find_by(id: params['comment'])
    if @c
      @text = @c.body
    else @text = ""
    end
    show_comments
  end

  def create
    if logged_in?
    @hint = Hint.new
    @hint = Hint.new(hint_params)
    @hint.user_id = @current_user.id
    @hint.save
    flash.notice = "New hint - '#{@hint.title}' added!"
    redirect_to hint_path(@hint)
    else redirect_to login_path
    end
  end

  def new
    if logged_in?
    @hint = Hint.new
    else redirect_to login_path
    end
  end

  def edit 
    if logged_in? && @current_user.id === Hint.find(params[:id])[:user_id] || @current_user.id === 1
    @hint = Hint.find(params[:id])
    else 
      redirect_to hint_path
    end
  end

  def destroy
    if logged_in? && @current_user.id === Hint.find(params[:id])[:user_id] || @current_user.id === 1
    @hint = Hint.destroy(params[:id])
    flash.notice = "Hint - '#{@hint.title}' deleted!"
    redirect_to hints_path
    else 
      redirect_to hint_path
    end
  end

  def update
    @hint = Hint.find(params[:id])
    @hint.update(hint_params)
    flash.notice = "Hint - '#{@hint.title}' Updated!"

    redirect_to hint_path(@hint)
  end


end