class VotesController < ApplicationController

  def new
    @memes = Meme.all
    @vote = Vote.new
    @photo = Photo.find(params[:photo_id])
  end

  def create
    current_user.votes.find_or_create_by(photo_id: params[:photo_id], meme_id: params[:id])
    redirect_to photos_url
  end

  def update
    create
  end

  def show
    @vote = Vote.find(params[:id])
  end

end
