# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  layout "netphase"

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def admin_required
    #just a patch until i can implement users and roles
    
    # "Speak friend, and enter" (Moria)
    session[:friend] ||= params[:friend]
    session[:friend] || redirect_to(home_path)
  end
  
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "g3trd0ne"
    end
  end
end
