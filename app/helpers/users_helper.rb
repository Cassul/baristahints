module UsersHelper

  def user_params
    params.permit(:username, :email, :password)
  end

  def users_ratings
    @rating = Hash.new
    @users = User.all
    @users.each do |user|
      @rating[user.id] = [user.email, user.username]
    end
    @rating.each do |key, value|
      hints = Hint.where(user_id: key)
      comments = Comment.where(user_id: key)
      @rating[key] << (hints.length * 20 + comments.length / 10)
    end

    return @rating

  end

end
