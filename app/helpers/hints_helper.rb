module HintsHelper
  def hint_params
    params.require(:hint).permit(:title, :body, :image_url)
  end
end
