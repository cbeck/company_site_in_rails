module ServicesHelper
  def render_services_title(element_name, title_text, closed=true)
    output = ""
    output += "<a name='#{element_name}_title'>"
    show_style = (closed) ? "" : "display:none;"
    hide_style = (closed) ? "display:none;" : ""
    output += link_to_function "show", "View.show_service('#{element_name}')", :class=>'right', :id=>"#{element_name}_link", :style=>show_style
    output += link_to_function "hide", "View.hide_service('#{element_name}')", :class=>'right', :id=>"#{element_name}_hide_link", :style=>hide_style
    output += "<h2 class='blue' id='#{element_name}_title_hide' style='#{hide_style}'>"
    output += link_to_function title_text, "View.hide_service('#{element_name}')"
    output += "</h2>"
    output += "<h2 id='#{element_name}_title_show' style='#{show_style}'>"
    output += link_to_function title_text, "View.show_service('#{element_name}')"
    output += "</h2>"
    output += "</a>"
    output
  end
end
