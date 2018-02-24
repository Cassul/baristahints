class LikesController < ApplicationController
  def create 
    like = Like.new
    like.user_id = current_user.id
    like.hint_id = params[:hint_id]
    if Like.where(hint_id: params[:hint_id], user_id: current_user.id).length == 0
      like.save
    end
    render json: like
  end

  def destroy
    like = Like.where(hint_id: params[:hint_id], user_id: current_user.id)[0]
    like.destroy
  end
end
