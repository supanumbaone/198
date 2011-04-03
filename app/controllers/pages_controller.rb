class PagesController < ApplicationController
  before_filter :finished_signup
  
  def home
    @user = current_user
    if user_signed_in?
      @groups = @user.groups.all
    end
  end
  
  def signed_up
  end
  
  def waiting_for_confirmation
  end
  
  def finished_signup
    if current_user && current_user.signup_status != 'completed' && current_user.confirmed_at
      redirect_to signup_wizard_path(:step => '2', :resource => current_user)
      false
    end
  end
end
