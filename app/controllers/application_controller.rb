class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && resource.signup_status != 'completed'
      signup_wizard_path(:step => '2', :resource => resource)
    else
      super
    end
  end
end
