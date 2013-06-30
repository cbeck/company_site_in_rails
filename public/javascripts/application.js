// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var Navigation = {
  make_active: function(the_node)	{
		element = $('#' + the_node);
		if (element == null) {}
		else {
			$(".active").removeClass("active");
	    $(element).addClass("active");	
		}
	}
}

var View = {
  show_service: function(element_name) {
    div = $('#' + element_name);
    if (div == null) {}
    else {
      $(div).show();
      var show_link = '#' + element_name + "_link";
      var hide_link = '#' + element_name + "_hide_link";
      var title_hide = '#' + element_name + "_title_hide";
      var title_show = '#' + element_name + "_title_show";
      $(show_link).hide();
      $(hide_link).show();
      $(title_hide).show();
      $(title_show).hide();
    }
  },
  
  hide_service: function(element_name) {
    div = $('#' + element_name);
    if (div == null) {}
    else {
      $(div).hide();
      var show_link = '#' + element_name + "_link";
      var hide_link = '#' + element_name + "_hide_link";
      var title_hide = '#' + element_name + "_title_hide";
      var title_show = '#' + element_name + "_title_show";
      $(hide_link).hide();
      $(show_link).show();
      $(title_hide).hide();
      $(title_show).show();
    }
  }
}