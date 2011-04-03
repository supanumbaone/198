# Overriding Devise's registrations_controller
class RegistrationsController < Devise::RegistrationsController
  #Only authenticate users, if the admin user is present
  # before_filter :authenticate_user!
  
  # PUT /resource
  def update
    # The step of the wizzard to be rendered next
    @step = params['step']
    
    # Handles the back button in signup_wizard
    if params[:back_button]
      @user = User.find(resource)
      @user.signup_status = 'account_step'
      @user.save
      clean_up_passwords(resource)
      render_with_scope :edit
    else
      
      # Saves current_step for sake of validation
      # Saves signup_status to prevent users from getting around the wizard
      if @step == '1'
        resource.current_step = 'account_step'
        resource.signup_status = 'information_step'
      elsif @step == '2'
        resource.current_step = 'information_step'
        resource.signup_status = 'schedule_step'
      end
      
      # Updates teh user
      if resource.update_with_password(params[resource_name])
        if @step == '2'
          redirect_to signup_wizard_path(:step => '3', :resource => resource), :notice => "Now that we've confirmed a bit of information, what times are you free?"
        else
          set_flash_message :notice, :updated
          redirect_to after_update_path_for(resource)
        end
      else
        if @step == '2'
          render :signup_wizard, :resource => resource, :step => '2'
        else
          clean_up_passwords(resource)
          render_with_scope :edit
        end
      end
    end
  end
  
  def signup_wizard
    authorize! :signup_wizard, @registration
    
    @resource = current_user
    
    # needed to populate form fields if data already exists
    # 
    # devise probably aliases resource with @user, therefore @user is being used
    # in plase of resource in the form if initialized here
    @user = User.find(@resource)
    
    @step = params[:step]
    @daynames = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)
    @time_block = TimeBlock.new
    @today = Date.today
    @times = TimeBlock.get_time_list
  end
  
  def after_sign_up_path_for(resource)
    waiting_for_confirmation_path
  end
end
