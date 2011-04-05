class Group < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  has_many :comments, :dependent => :destroy
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  # Implementing acts_as_commentable_with_threading
  acts_as_commentable
  
  mount_uploader :profile_image, ProfileImageUploader
  
  attr_accessible :name, :description, :invited_users, :max_members, :total_members, :privacy, :creator, :interest_list,
                  :profile_image
                  
  # validates_presence_of :profile_image, :interest_list, :name, :description, :privacy, :creator
  validates_length_of :name, :within => 2..75, :too_long => "must be at most 75 characters", :too_short => "must be at least 2 characters"
  # validates_length_of :description, :within => 2..1500, :too_long => "must be at most 1500 characters", :too_short => "must be at least 2 characters"
  # validates_size_of :profile_image, :maximum => 5.megabytes
  
  def self.export
    groups = Group.all
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    blocks = %w(morning afternoon evening)
    export_users = []
    # export_users << "Name,Email,,M,,,T,,,W,,,Th,,,F,,,S,,,Su,,Preferred Friends"
    # export_users << ",,am,noon,pm,am,noon,pm,am,noon,pm,am,noon,pm,am,noon,pm,am,noon,pm,am,noon,pm,"
    groups.each do |group|
      group.users.each do |user|
        user_days = []
        user_line = []
        7.times { user_days << ["","",""] }
        user_line << user.last_name
        user_line << user.first_name
        user_line << user.email
        user_line << group.name
        if user.schedule
          user.schedule.days.each do |day|
            if day
              day.time_blocks.each do |block|
                user_days[days.index(day.name)][blocks.index(block.chunk_of_time)] = "Y"
              end
            end
          end
          user_days.each do |u_day|
            u_day.each do |u_block|
              user_line << u_block
            end
          end
          user_line << user.parse_preferred_teammates
        end
        export_users << user_line
      end
      export_users << nil
    end
    
    export_users
  end
end
