class Group < ActiveRecord::Base
  has_one :schedule, :dependent => :destroy
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  has_many :comments, :dependent => :destroy
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  # Implementing acts_as_commentable_with_threading
  acts_as_commentable
  
  mount_uploader :profile_image, ProfileImageUploader
  
  attr_accessible :name, :description, :invited_users, :max_members, :total_members, :privacy, :creator, :interest_list,
                  :profile_image, :discussion_section_1, :discussion_section_2, :discussion_section_3
                  
  # validates_presence_of :profile_image, :interest_list, :name, :description, :privacy, :creator
  validates_length_of :name, :within => 2..75, :too_long => "must be at most 75 characters", :too_short => "must be at least 2 characters"
  # validates_length_of :description, :within => 2..1500, :too_long => "must be at most 1500 characters", :too_short => "must be at least 2 characters"
  # validates_size_of :profile_image, :maximum => 5.megabytes
  
  def score
    self.friend_score + self.meeting_score + self.schedule_score
  end
  
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
          # user_line << user.parse_preferred_teammates
          user_line << user.preferred_teammates
          user_line << user.discussion_section_1
          user_line << user.discussion_section_2
          user_line << user.discussion_section_3
        end
        export_users << user_line
      end
      export_users << nil
    end
    
    export_users
  end
  
  def self.group_users
    clean_up_groups
    group_by_friends
    group_by_time_blocks
    group_ungrouped_users
  end
  
  def self.clean_up_groups
    memberships = Membership.all
    groups = Group.all
    
    memberships.each do |membership|
      membership.destroy
    end
    
    groups.each do |group|
      group.destroy
    end
  end
  
  def self.group_by_friends
    ungrouped_users = []
    users_with_preferred_teammates = []
    users = User.all
    
    # construct list of users not in a group
    # construct a list of users with preferred taemmates
    users.each do |u|
      ungrouped_users << u.email
      users_with_preferred_teammates << u.email if !u.preferred_teammates.blank?
    end
    
    # find a group for each user and his preferred_teammates
    # do this until all users with preferred teammates are grouped
    while !users_with_preferred_teammates.empty?
      user = User.where(:email => users_with_preferred_teammates.first).first  # ha!
      # user.parse_preferred_teammates
      find_group_for(user)
      group = user.groups.first
      ungrouped_users.delete(user.email)
      users_with_preferred_teammates.delete(user.email)
      preferred_teammates = user.preferred_available_teammates
      preferred_teammates.each do |teammate|
        preferred_teammate = User.where(:email => teammate).first
        if preferred_teammate and group.has_compatible_meeting_time_with(user)
          add_to_group(preferred_teammate, group, "friend")
        end
        # teammate should be deleted from lists regardless of if grouped or not
        # for sake of loop continuing
        # ungrouped users will be dealt with later
        ungrouped_users.delete(teammate)
        users_with_preferred_teammates.delete(teammate)
      end
    end
    
    # MAY WANT TO DELETE - ungrouped_users isn't really needed
    # return list of users that still need to be grouped
    ungrouped_users
  end
  
  def self.find_group_for(user)
    max_group_size = 8  # how large groups can get
    groups = Group.all
    
    # if there are no groups, create one
    if groups.empty?
      group = Group.new(:name => "group_1", :creator => user.id)
      group.save
      add_to_group(user, group, "creator")
    # else fit the user and his preferred teammates into an existing group
    else
      groups.each do |group|
        # if group is not full
        if group.users.count < max_group_size
          available_spots = max_group_size - group.users.count
          spots_required = user.preferred_available_teammates.count + 1
          # if group has enough spots for current user and all his preferred teammates
          if available_spots >= spots_required
            # if at least 1 of user's monday availabilities mach up with the group's
            if group.has_compatible_meeting_time_with(user)
              add_to_group(user, group, "meeting") # may want to change BACK to friend..
            end
          end
        end
      end
    end
    
    # if the user couldn't be fit into an existing group, create a new one
    if user.groups.empty?
      create_and_join_group(user)
    end
  end
  
  def self.create_and_join_group(user)
    group = Group.create(:name => "group_#{Group.all.count + 1}", :creator => user.id)
    add_to_group(user, group, "creator")
  end
  
  def self.add_to_group(user, group, reason)
    compatibility_score = 0
    
    case reason
    when "creator"
      compatibility_score += 42
      
      group.initialize_group_meeting_times(user)
      group.initialize_group_schedule(user.schedule)  # leader must have a schedule..
    when "friend"
      compatibility_score += 21
      compatibility_score += user.number_of_compatible_time_blocks_with(group.schedule)
      
      group.update_group_meeting_times(user)
      group.update_group_schedule(user.schedule) if user.schedule != nil
    else
      compatibility_score += user.number_of_compatible_time_blocks_with(group.schedule)
      
      group.update_group_meeting_times(user)
      group.update_group_schedule(user.schedule) if user.schedule != nil
    end
    
    Membership.create(:group_id => group.id, :user_id => user.id, :compatibility_score => compatibility_score)
  end
  
  def update_group_meeting_times(user)
    if (self.discussion_section_1 > user.discussion_section_1)
      self.discussion_section_1 = user.discussion_section_1
    end
    if (self.discussion_section_2 > user.discussion_section_2)
      self.discussion_section_2 = user.discussion_section_2
    end
    if (self.discussion_section_3 > user.discussion_section_3)
      self.discussion_section_3 = user.discussion_section_3
    end
  end
  
  def update_group_schedule(schedule)
    self_days = self.schedule.days
    schedule_days = schedule.days
    
    self_days.each do |self_day|
      day_in_common = false
      schedule_days.each do |schedule_day|
        if self_day.name == schedule_day.name
          day_in_common = true
          self_day.time_blocks.each do |self_block|
            time_block_in_common = false
            schedule_day.time_blocks.each do |schedule_block|
              if self_block.chunk_of_time == schedule_block.chunk_of_time
                time_block_in_common = true
              end
            end
            if !time_block_in_common
              block = TimeBlock.where(:id => self_block.id).first
              block.destroy if block != nil
            end
          end
        end
      end
      if !day_in_common
        day = Day.where(:id => self_day.id).first
        # logger.debug "NIL DAY: #{self_day.id}"
        day.destroy if day != nil
      end
    end
  end
  
  def initialize_group_meeting_times(creator)
    self.discussion_section_1 = creator.discussion_section_1
    self.discussion_section_2 = creator.discussion_section_2
    self.discussion_section_3 = creator.discussion_section_3
  end
  
  def initialize_group_schedule(creator_schedule)
    # clear current schedule if one exists
    self.schedule.destroy if self.schedule != nil
    
    # create schedule
    schedule = Schedule.create(:group_id => self.id)
    
    # copy creator's schedule as group's schedule
    creator_schedule.days.each do |creator_day|
      day = Day.create(:name => creator_day.name, :schedule_id => schedule.id)
      creator_day.time_blocks.each do |creator_time_block|
        TimeBlock.create(:chunk_of_time => creator_time_block.chunk_of_time, :day_id => day.id)
      end
    end
  end
  
  def reset_meeting_times
    leader = User.where(:id => self.creator).first
    self.initialize_group_meeting_times(leader)
    self.users.each do |user|
      self.update_group_meeting_times(user)
    end
  end
  
  def reset_schedule
    leader = User.where(:id => self.creator).first
    self.initialize_group_schedule(leader.schedule)
    self.users.each do |user|
      self.update_group_schedule(user.schedule)
    end
  end
  
  # return true if self and user have at least one monday availability in common
  def has_compatible_meeting_time_with(user)
    if (self.discussion_section_1 != 0) and (user.discussion_section_1 != 0)
      return true
    elsif (self.discussion_section_2 != 0) and (user.discussion_section_2 != 0)
      return true
    elsif (self.discussion_section_3 != 0) and (user.discussion_section_3 != 0)
      return true
    else
      return false
    end
  end
  
  def self.group_by_time_blocks
    groups = Group.all
    
    groups.each do |group|
      ungrouped_users = []
      users = User.all

      # construct list of users not in a group
      users.each do |user|
        ungrouped_users << {"user" => user, "score" => 0} if user.groups.empty?
      end
      
      # scoring ungrouped users' compatibility with the current group
      # where ungrouped_user => [user,score]
      ungrouped_users.each do |ungrouped_user|
        # +1 per time block in common with the group schedule
        # if ungrouped user does not have a compatible meeting time, they keep a score of 0 :(
        if group.has_compatible_meeting_time_with(ungrouped_user["user"])
          ungrouped_user["score"] = ungrouped_user["user"].number_of_compatible_time_blocks_with(group.schedule)
        end
      end
      
      ungrouped_users.sort! { |b,a| a["score"] <=> b["score"] }
      delete_old_add_new(ungrouped_users, group)
    end
  end
  
  def self.delete_old_add_new(ungrouped_users, group)
    users_to_be_added = []
    users_to_be_removed = []
    max_group_size = 8  # how large groups can get
    free_spots = max_group_size - group.users.count
    
    # fill up empty slots if there are eligible members
    if free_spots > 0
      free_spots.times do
        if !ungrouped_users.empty?
          user = ungrouped_users.pop
          score = user["score"]
          user = user["user"]
      
          # only add user to group if they are eligible (aka, have a compatible meeting time)
          add_to_group(user, group, "schedule") if score > 0
        end
      end
    end
    
    # while the highest-scoring non-grouped user is compatible with this group
    # while the highest-scoring non-grouped user has a higher compatibility score than the least compatible current group member
    # remove least compatible current group member and add the most compatbile non-grouped user
    while !ungrouped_users.empty? and ungrouped_users.first["score"] > 0 and ungrouped_users.first["score"] > group.least_compatible_member.memberships.first.compatibility_score
      least_compatible_member = group.least_compatible_member
      least_compatible_member.memberships.first.destroy
      group.reset_meeting_times
      group.reset_schedule
      add_to_group(ungrouped_users.pop["user"], group, "schedule")
    end
  end
  
  # returns the least-compatible group member
  # returns false if there is no least-compatible group member (un-freaking-likely)
  def least_compatible_member
    least_compatible_member = User.where(:id => self.creator).first
    lowest_compatibility_score = 42 # the highest possible score (aka, the group creator's score)
    members = self.users
    
    members.each do |member|
      logger.debug "NIL MEMBER: #{member.email} #{member.memberships}"
      if member != nil
        member_score = member.memberships.first.compatibility_score
        if member_score < lowest_compatibility_score
          lowest_compatibility_score = member_score
          least_compatible_member = member
        end
      end
    end
    
    least_compatible_member
  end
  
  # Throws all ungrouped users into a catch-all group: "ungrouped_users"
  def self.group_ungrouped_users
    users = User.all
    
    group = Group.new(:name => "ungrouped_users")
    group.save
    
    users.each do |user|
      if user.groups.empty?
        membership = Membership.new(:group_id => group.id, :user_id => user.id)
        membership.save
      end
    end
  end
end
