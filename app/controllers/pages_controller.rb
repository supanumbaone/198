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
  
  def roster
    @users = Group.export
  end
  
  def finished_signup
    if current_user && current_user.signup_status == 'account_step'
      redirect_to signup_wizard_path(:step => '2', :resource => current_user)
      false
    elsif current_user && current_user.signup_status == 'schedule_step'
      redirect_to signup_wizard_path(:step => '3', :resource => current_user)
      false
    end
  end
  
  def stats
    @users = User.all
    @users_count = @users.count
    @unregistered_users = User.get_unregistered_users
  end
end
