module HintsHelper

  def hint_params
    params.require(:hint).permit(:title, :body, :image)
  end

  def show_comments
    @comments = Comment.where(hint_id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end
