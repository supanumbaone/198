class TimeBlocksController < ApplicationController
  def index
    @time_blocks = TimeBlock.all
  end

  def show
    @time_block = TimeBlock.find(params[:id])
  end

  def new
    @time_block = TimeBlock.new
  end

  def create
    @schedule_type = params['schedule_type']
    @blocks = params[:time_block][:chunk_of_time]
    @blocks = TimeBlock.remove_nils(@blocks)
    @user = current_user
    
    # Handles the back button in signup_wizard
    if params[:back_button]
      @user.signup_status = 'information_step'
      @user.save
      redirect_to signup_wizard_path(:step => '2', :resource => params['resource'])
    else
    
      # Saves current_step for sake of validation
      # Saves signup_status to prevent users from getting around the wizard
      @user.current_step = 'schedule_step'
      @user.signup_status = 'completed'
      
      # Registration schedule create
      if !@schedule_type.blank?
        
        # If the user selected time blacks, add them to the user's schedule
        if !@blocks.empty?
          
          # Create a schedule for the user if the user does not already have one
          if @user.has_schedule?
            @schedule = Schedule.where(:user_id => @user.id)
          else
            @schedule = Schedule.new(:user_id => @user.id)
            @schedule.save
          end
          
          if @schedule_type == 'simple'
            @user.add_date_chunks_to_schedule(@blocks, @schedule)
          elsif @schedule_type == 'conventional_simple'
            @user.add_day_chunks_to_schedule(@blocks, @schedule)
          elsif @schedule_type == 'complex_recurring'
            @user.add_blocks_to_schedule(@blocks, @schedule, true)
          end
          @user.save
          # redirect_to root_path, :notice => "You're all signed up! Check out who's available.."
          redirect_to signed_up_path
        else
          flash[:error] = "You must have at least one small chunk of time free this week :)"
          redirect_to signup_wizard_path(:step => '3', :resource => params['resource'])
        end
        
      # Normal create procedure
      else
        @time_block = TimeBlock.new(params[:time_block])
        if @time_block.save
          redirect_to @time_block, :notice => "Successfully created time block."
        else
          render :action => 'new'
        end
      end
    end
  end

  def edit
    @time_block = TimeBlock.find(params[:id])
  end

  def update
    @time_block = TimeBlock.find(params[:id])
    if @time_block.update_attributes(params[:time_block])
      redirect_to @time_block, :notice  => "Successfully updated time block."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @time_block = TimeBlock.find(params[:id])
    @time_block.destroy
    redirect_to time_blocks_url, :notice => "Successfully destroyed time block."
  end
end
