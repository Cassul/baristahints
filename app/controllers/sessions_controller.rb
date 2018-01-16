class SessionsController < ApplicationController
  include SessionsHelper
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to '/' #change that to a user's details page
    else
      #add flash in future with error?
    render 'new'
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
