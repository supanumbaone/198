class ApplicationController < ActionController::Base
  # check_authorization
  protect_from_forgery
  before_filter :mailer_set_url_options
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.signup_status != 'completed'
      flash[:notice] = "Cool. Now tell us a bit about you.. "
      signup_wizard_path(:step => '2', :resource => resource)
    else
      super
    end
  end
  
  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end
end
