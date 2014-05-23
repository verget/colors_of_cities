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
      photo_type: params[:photo][:photo_type]) 
     redirect_to photos_path
  end
  def edit
    @photo = Photo.find(params[:id])    
  end
  
  def update
    @photo = Photo.find(params[:id])  
    @photo.update_attributes(
      title: params[:photo][:title], 
      lattitute: params[:photo][:lattitute], 
      longitude: params[:photo][:longitude],
      photo_type: params[:photo][:photo_type]) 
     redirect_to photos_path
  end
end
