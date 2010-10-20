class ProfileController < ApplicationController
  
  helper :photo

  
  def index
    @title = "Friend Photos Profiles"
    
  end
  
  def show
    @hide_edit_links = true
    screen_name = params[:screen_name]
    @user = User.find_by_screen_name(screen_name)
    if @user
      @title = "My Friend Photos Profile for #{screen_name}"
    else
      flash[:notice] = "No user #{screen_name} at Friend Photos!"
      redirect_to :action => "index"
    end
    
  end
  
end
