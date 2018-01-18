class CommentsController < ApplicationController
  protect_from_forgery

  def new
  end

  def create
    @comment = Comment.new
    @comment.author_name = User.find_by(id: params['comment'])[:username]
    @comment.body = params[:body]
    @comment.user_id = params['comment']
    @comment.hint_id = params['hint']
    @comment.save
    flash.notice = "comment added"
    redirect_to hint_path(@comment.hint_id) 
  end

  def update
  end

  def destroy
    @comment = Comment.find(params['id'])
    @comment.destroy
    flash.notice = "comment deleted"
    redirect_to hint_path(@comment.hint_id)
  end

  def index
  end

end
