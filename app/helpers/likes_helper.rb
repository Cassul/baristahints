module LikesHelper
  def how_many_likes(id)
    @likes = Like.where(hint_id: id)
    @likes.length
  end
end
