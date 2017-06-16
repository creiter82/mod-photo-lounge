class PhotosController < ApplicationController

  def index
    @photos = Photos.all?
  end

  def event
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
