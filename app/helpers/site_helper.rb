module SiteHelper
  def render_grouped_list(group, grouping=4)
    output = ""
    group.in_groups_of(grouping, false) do |slice|
      output += "<ul class='grouped'>"
      slice.each do |groupee|
        output += "<li>#{groupee}</li>"
      end
      output += "</ul>"
    end
    output
  end
end
