class SongsController < ApplicationController
  def index
    @user = current_user
    @new_user = User.new
    @songs = Song.all
    @song = Song.new
  end
  
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    @song.users << current_user
    if @song.save
      redirect_to root_url, :notice => "Song created successfully"
    else
      render "new"
    end
  end
  
  def destroy
    @song = Song.find_by_id(params[:id])
    @song.destroy
    redirect_to root_url, :alert => "Song was deleted"
  end
end

