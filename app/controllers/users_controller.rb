class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Signed up, and logged in!"
    else
      render "new"
    end
  end
  
  def show
    @new_user = User.new
    @user = User.find(params[:id])
    @song = Song.new
  end
  
end