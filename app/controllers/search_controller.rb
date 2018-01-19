class SearchController < ApplicationController
  def index
    if params[:search].blank?
      redirect_to '/'
    else
    search_word = "%#{params[:search]}%"
    @in_name = Hint.where("title ILIKE ?", search_word)
    @in_body = Hint.where("body ILIKE ?", search_word)
    @in_comments = Comment.where("body ILIKE?", search_word)
    end
  end
end
