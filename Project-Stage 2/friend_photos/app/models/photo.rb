class Photo < ActiveRecord::Base
  # Image directories
  URL_STUB = "/images/photos"
  DIRECTORY = File.join("public", "images", "photos")
  
  def initialize(user, image = nil)
    @user = user
    @image = image
    Dir.mkdir(DIRECTORY) unless File.directory?(DIRECTORY)
  end
  
  def exists?
    File.exists? (File.join(DIRECTORY, filename))
  end
  
  alias exist? exists?
  
  # Save the photo images.
  def save
    successful_conversion?
  end
  
  
  def url
"#{URL_STUB}/#{filename}"
  end
  
  def thumbnail_url
"#{URL_STUB}/#{thumbnail_name}"
  end
  
  private
  # Return the filename of the main photo.
  def filename
"#{@user.screen_name}"
  end
  # Return the filename of the photo thumbnail.
  def thumbnail_name
"#{@user.screen_name}_thumbnail.png"
  end
  
  # Try to resize image file and convert to PNG.
  # We use ImageMagick's convert command to ensure sensible image sizes.
  def successful_conversion?
    # Prepare the filenames for the conversion.
    #source = File.join(DIRECTORY, "#{@user.screen_name}_full_size")
    source = File.join(DIRECTORY, "#{@user.screen_name}")
    full_size = File.join(DIRECTORY, filename)
    thumbnail = File.join(DIRECTORY, thumbnail_name)
    # Ensure that small and large images both work by writing to a normal file.
    # (Small files show up as StringIO, larger ones as Tempfiles.)
    File.open(source, "wb") { |f| f.write(@image.read) }
    # Convert the files.
    #system("#{convert} #{source} -resize #{IMG_SIZE} #{full_size}")
    #system("#{convert} #{source} -resize #{THUMB_SIZE} #{thumbnail}")
    #File.delete(source) if File.exists?(source)
    # No error-checking yet!
    return true
  end
  
  
  
  
end
