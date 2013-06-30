module ImagesHelper
  
  def image_link(media, options={})
    format = options.delete(:format) || :jpg
    options[:alt] ||= "#{media.name} photo"
    image_tag(image_path(media, :format => format), options)
  end
  
  def thumb_link(media, options={})
    format = options.delete(:format) || :jpg
    options[:alt] ||= "#{media.name} photo"
    image_tag(thumb_image_path(media, :format => format), options)
  end

  def small_link(media, options={})
    format = options.delete(:format) || :jpg
    options[:alt] ||= "#{media.name} photo"
    image_tag(small_image_path(media, :format => format), options)
  end

  def medium_link(media, options={})
    format = options.delete(:format) || :jpg
    options[:alt] ||= "#{media.name} photo"
    image_tag(medium_image_path(media, :format => format), options)
  end
  
  def mini_link(media, options={})
    format = options.delete(:format) || :jpg
    options[:alt] ||= "#{media.name} photo"
    image_tag(mini_image_path(media, :format => format), options)
  end
  
end
