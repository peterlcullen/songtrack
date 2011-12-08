class SessionsController < ApplicationController
  def new
  end

  def create
    @new_user = User.new 
    @song = Song.new
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in"
    else
      redirect_to root_url, :alert => "Invalid email or password."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end