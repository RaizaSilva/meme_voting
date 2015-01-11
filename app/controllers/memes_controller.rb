class MemesController < ApplicationController

  def index
   @memes = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    @meme.save
    redirect_to photos_url
  end

  def show
    @meme = Meme.find(params[:id])
  end


  private

  def meme_params
    params.require(:meme).permit(:name, :meme_img)
  end


end
