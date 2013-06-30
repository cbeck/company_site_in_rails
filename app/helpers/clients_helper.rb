module ClientsHelper
  def client_link_url(client)
    link = nil
    if !client.story_url.blank?
      link = client.story_url
    elsif !client.story.blank?
      link = client_path(client)
    elsif !client.url.blank?
      link = client.url
    end
    link
  end
  
  def render_client_image(client)
    output = ""
    link = client_link_url(client)
    unless link.blank?
      output = link_to(image_tag(client.image_url), link)
    else
      output = image_tag(client.image_url) unless client.image_url.blank?
    end
    output
  end
  
  def render_client_name(client)
    output = ""
    link = client_link_url(client)
    unless link.blank?
      output = link_to(client.name, link)
    else
      output = client.name
    end
    output
  end
end
