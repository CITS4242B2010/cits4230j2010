class SiteController < ApplicationController
  def index
    @title = "Welcome to Friend Photos!"
  end

  def about
    @title = "About Friend Photos"
  end

  def help
    @title = "Friend Photos Help"
  end

end
