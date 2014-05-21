class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  
  def new
   @photo = Photo.new 
  end
  
  def create 
    Photo.create(
      title: params[:photo][:title], 
      lattitute: params[:photo][:lattitute], 
      longitude: params[:photo][:longitude],
      type: params[:photo][:type]) 
     redirect_to photos_path
  end
end
