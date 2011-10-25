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
    @memberships = Membership.all
    render :layout => "stretched"
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
    @users = User.where(:signup_status => "completed")
    @users_count = @users.count
    @limbo_users = User.where("Signup_status != ?", "completed")
    @limbo_count = @limbo_users.count
    @unregistered_users = User.get_unregistered_users
  end
end
