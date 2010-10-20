class PhotoController < ApplicationController
  
  #before_filter :protect
  
  
  def index
    redirect_to hub_url
    
    
  end
  
  def upload
    @title = "Upload Your Photo"
    @user = User.find(session[:user_id])
    
    if param_posted?(:photo)
      image = params[:photo][:image]
      @photo = Photo.new(@user, image)
      if @photo.save
        flash[:notice] = "Your photo has been uploaded."
        redirect_to hub_url
      end
    end
    
    
  end
  
  def delete
  end
  
  private
  # Return true if a parameter corresponding to the given symbol was posted.
  def param_posted?(symbol)
    request.post? and params[symbol]
  end
  
end
