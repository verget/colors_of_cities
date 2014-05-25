class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
   @user = User.new #inicializ form s nujnimi pol9mi
  end
  
  def create
   @user = User.new(permitted_params[:user])
    if @user.valid?
     @user.save
     redirect_to users_path 
    else
     render :new 
    end
  end
  def edit
    @user = User.find(params[:id])    
  end
  
  def update
    @user = User.find(params[:id])  
    if @user.update_attributes(permitted_params[:user])
     @user.valid? 
     redirect_to users_path 
    else
      render :new
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path 
  end
  
 private
  def permitted_params
    params.permit!
  end
end    
