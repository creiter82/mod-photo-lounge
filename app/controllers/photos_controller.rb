class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to photos_path, notice: "#{@photo.title} was successfully created." }
      else
        format.html { render :new }
      end
    end
  end

  def edit

  end

  def update

  end

  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Blog was successfully destroyed.' }
    end
  end

  private

    def set_photo
      @photo = Photo.friendly.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:title, :main_image, {event_images: []})
    end

end
