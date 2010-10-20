module PhotoHelper
  
  # Return an image tag for the user photo.
  def photo_tag(user)
    image_tag(user.photo.url, :border => 1)
  end
  # Return an image tag for the user photo thumbnail.
  def thumbnail_tag(user)
    image_tag(user.photo.thumbnail_url, :border => 1)
  end
  
  # Return true if hiding the edit links for spec, FAQ, etc.
  def hide_edit_links?
    not @hide_edit_links.nil?
  end
  
  
end
