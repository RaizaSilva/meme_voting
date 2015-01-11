class PhotosController < ApplicationController
  def index
    @photos  = if params[:more_recent]
                        Photo.more_recent
                      elsif params[:more_voted]
                        Photo.more_voted
                      else
                        Photo.all
                      end
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = current_user.photos.new(photo_params)
    @photo.save
    redirect_to photos_url
  end

  def show
    @photo = Photo.find(params[:id])
  end

  private

  def photo_params
    params.require(:photo).permit(:photo_name, :photo_img)
  end

end
