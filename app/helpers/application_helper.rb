# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def google_analytics
      urchin = <<-EOS
        <script type="text/javascript">
        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript">
        var pageTracker = _gat._getTracker("UA-1147482-9");
        pageTracker._initData();
        pageTracker._trackPageview();
        </script>
      EOS
      urchin if ENV['RAILS_ENV'] == 'production'
    end
    
    
end
