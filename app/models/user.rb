class User < ActiveRecord::Base
  has_one :schedule, :dependent => :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  mount_uploader :profile_image, ProfileImageUploader

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, 
                  :birthday, :about, :location, :school, :occupation, :aim, :live, :skype, 
                  :gtalk, :phone, :hide_email, :hide_phone, :hide_ims, :birthday_privacy, :signup_status,
                  :interest_list, :profile_image
  
  # Keeps track of the signup step
  attr_accessor :current_step
                  
  validates_presence_of :profile_image, :interest_list, :first_name, :last_name, :location,
                        :if => lambda { |user| user.current_step == 'information_step' } 
  validates_length_of :first_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  validates_length_of :last_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  validates_inclusion_of :birthday,
      :in => Date.new(1900)..Time.now.years_ago(13).to_date,
      :message => "- you've gotta be at least 13 to sign up. /sadface",
      :if => lambda { |user| user.current_step == 'information_step' }
  validates_size_of :profile_image, :maximum => 5.megabytes, :if => lambda { |user| user.current_step == 'information_step' }

  
  # Overwriting Devise's update_with_password
  def update_with_password(params={})
    if params[:password].blank? 
      params.delete(:password) 
      params.delete(:password_confirmation) if params[:password_confirmation].blank? 
    end 
    update_attributes(params) 
  end
  
  # Does the user already have a schedule?
  def has_schedule?
    self.schedule != nil
  end
  
  # Given a schedule, create days and time blocks associated with this schedule
  def add_blocks_to_schedule(time_blocks, schedule)
    time_blocks.each do |block|
      date = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      if Day.exists?(date, schedule.id)
        day = Day.where(:date => date, :schedule_id => schedule.id).first
      else
        day = Day.new(:date => date, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.exists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
end
