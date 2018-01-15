class HintsController < ApplicationController
  include HintsHelper
  def index
    @hints = Hint.all
  end

  def show 
    @hint = Hint.find(params[:id])
  end

  def create
    @hint = Hint.new
    @hint = Hint.new(hint_params)
    @hint.save
    flash.notice = "New hint - '#{@hint.title}' added!"
    redirect_to hint_path(@hint)
  end

  def new
    @hint = Hint.new
  end

  def edit 
    @hint = Hint.find(params[:id])
  end

  def destroy
    @hint = Hint.destroy(params[:id])
    flash.notice = "Hint - '#{@hint.title}' deleted!"
    redirect_to hints_path
  end

  def update
    @hint = Hint.find(params[:id])
    @hint.update(hint_params)
    flash.notice = "Hint - '#{@hint.title}' Updated!"

    redirect_to hint_path(@hint)
  end

end