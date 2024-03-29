# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  before_filter :adjust_format_for_mobile
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '7d2bee0177186042331ca558aa4e9bdb'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  def adjust_format_for_mobile
    if request.subdomains.first == "m" || 
       (RAILS_ENV != "production" && 
        request.env["HTTP_USER_AGENT"] && 
        request.env["HTTP_USER_AGENT"][/(iPhone|iPod)/])
      request.format = :mobile
    end
  end
end
