class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  
  def new
   @photo = Photo.new #inicializ form s nujnimi pol9mi
  end
  
  def create
    @photo = Photo.new(permitted_params[:photo])
    if @photo.valid?
     @photo.save
     redirect_to photos_path
    else
     render :new 
    end
    
  end
  def edit
    @photo = Photo.find(params[:id])     
  end
  
  def update
    @photo = Photo.find(params[:id])  
    if @photo.update_attributes(permitted_params[:photo]) 
     @photo.valid? 
     redirect_to photos_path
    else
      render :new
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
    
  end
  
 private
  def permitted_params
    params.permit!
  end
end    
