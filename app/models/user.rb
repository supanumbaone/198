class User < ActiveRecord::Base
  has_one :schedule, :dependent => :destroy
  has_many :memberships, :dependent => :destroy
  has_many :groups, :through => :memberships
  has_many :comments, :dependent => :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  mount_uploader :profile_image, ProfileImageUploader

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, 
                  :birthday, :about, :location, :school, :occupation, :aim, :live, :skype, 
                  :gtalk, :phone, :hide_email, :hide_phone, :hide_ims, :birthday_privacy, :signup_status,
                  :interest_list, :profile_image, :personal_information_added, :discussion_section_1,
                  :discussion_section_2, :discussion_section_3, :preferred_teammates
  
  # Keeps track of the signup step
  attr_accessor :current_step
                  
  # validates_presence_of :profile_image, :interest_list, :first_name, :last_name, :location,
                        # :if => lambda { |user| user.current_step == 'information_step' } 
  validates_length_of :first_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  validates_length_of :last_name, :within => 2..30, :too_long => "must be at most 30 characters", :too_short => "must be at least 2 characters",
                      :if => lambda { |user| user.current_step == 'information_step' }
  # validates_inclusion_of :birthday,
      # :in => Date.new(1900)..Time.now.years_ago(13).to_date,
      # :message => "- you've gotta be at least 13 to sign up. /sadface",
      # :if => lambda { |user| user.current_step == 'information_step' }
  # validates_size_of :profile_image, :maximum => 5.megabytes, :if => lambda { |user| user.current_step == 'information_step' }
  
  # Check out app/validators/email_format_validator.rb
  validates :email, :email_format => true
  
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
  
  # Given a schedule, create days with dates
  # Where a chunk_of_time is "morning" | "afternoon" | "evening"
  def add_date_chunks_to_schedule(time_blocks, schedule)
    time_blocks.each do |block|
      date = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      if Day.exists?(date, schedule.id)
        day = Day.where(:date => date, :schedule_id => schedule.id).first
      else
        day = Day.new(:date => date, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.dexists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
  
  # Given a schedule, create days with names
  # Where a chunk_of_time is "morning" | "afternoon" | "evening"
  def add_day_chunks_to_schedule(time_blocks, schedule)
    time_blocks.each do |block|
      day_of_week = block.split("_")[0]
      chunk_of_time = block.split("_")[1]
      
      if Day.exists?(day_of_week, schedule.id)
        day = Day.where(:name => day_of_week, :schedule_id => schedule.id).first
      else
        day = Day.new(:name => day_of_week, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.dexists?(chunk_of_time, day.id)
        time_block = TimeBlock.new(:chunk_of_time => chunk_of_time, :day_id => day.id)
        time_block.save
      end
    end
  end
  
  # Given a schedule, create days and block of time associated with this schedule
  # Where a block consists of a :start_time and :end_time
  def add_blocks_to_schedule(time_blocks, schedule, recurring)
    time_blocks.each do |block|
      day_of_week = block.split("_")[0]
      time = block.split("_")[1]
      start_time = Time.utc("2011", nil, nil, time.split(" - ")[0])
      end_time = Time.utc("2011", nil, nil, time.split(" - ")[1])
      
      if Day.exists?(day_of_week, schedule.id)
        day = Day.where(:name => day_of_week, :schedule_id => schedule.id).first
      else
        day = Day.new(:name => day_of_week, :schedule_id => schedule.id)
        day.save
      end
      
      if !TimeBlock.exists?(start_time, end_time, day.id, recurring)
        time_block = TimeBlock.new(:start_time => start_time, :end_time => end_time, :day_id => day.id, :recurring => recurring)
        time_block.save
      end
    end
  end
  
  def self.export_object
    users = User.all
    users_to_be_exported = []
    
    users.each do |user|
      temp = "#{user.email},#{user.discussion_section_1},#{user.discussion_section_2},#{user.discussion_section_3}:#{user.preferred_teammates}:".gsub(/\s/,"")
      if user.schedule
        user.schedule.days.each do |day|
          day.time_blocks.each do |block|
            temp += "#{numeric_day(day.name)} #{numeric_block(block.chunk_of_time)},"
          end
        end
      end
      temp = temp[0..(temp.length-2)] if temp[temp.length-1] == ","
      users_to_be_exported << temp
    end
    
    users_to_be_exported
  end
  
  def self.numeric_day(day)
    if day == "Monday"
      return 0
    elsif day == "Tuesday"
      return 1
    elsif day == "Wednesday"
      return 2
    elsif day == "Thursday"
      return 3
    elsif day == "Friday"
      return 4
    elsif day == "Saturday"
      return 5
    elsif day == "Sunday"
      return 6
    end
  end
  
  def self.numeric_block(block)
    if block == "morning"
      return 1
    elsif block == "afternoon"
      return 2
    elsif block == "evening"
      return 3
    end
  end
end
