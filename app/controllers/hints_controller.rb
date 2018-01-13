class HintsController < ApplicationController
  def index
    @hints = Baristahint.all
  end

  def show 
    @hint = Baristahint.find(params[:id])
  end
end
