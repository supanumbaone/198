class Group < ActiveRecord::Base
  has_one :schedule, :dependent => :destroy
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  has_many :comments, :dependent => :destroy
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  # Implementing acts_as_commentable_with_threading
  acts_as_commentable
  
  # mount_uploader :profile_image, ProfileImageUploader
  
  attr_accessible :name, :description, :invited_users, :max_members, :total_members, :privacy, :creator, :interest_list,
                  :profile_image, :discussion_section_1, :discussion_section_2, :discussion_section_3
                  
  # validates_presence_of :profile_image, :interest_list, :name, :description, :privacy, :creator
  validates_length_of :name, :within => 2..75, :too_long => "must be at most 75 characters", :too_short => "must be at least 2 characters"
  # validates_length_of :description, :within => 2..1500, :too_long => "must be at most 1500 characters", :too_short => "must be at least 2 characters"
  # validates_size_of :profile_image, :maximum => 5.megabytes
  
  
  #############################
  ###  Attribute Functions  ###
  #############################
  
  # Returns how large groups can get
  def self.max_group_size
    8
  end
  
  
  ###################################
  ###  Admin Interface Functions  ###
  ###################################
  
  # Returns an array of strings for all users, where each string contains a user's
  # grouping information
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
        user_line << user.memberships.first.compatibility_score  #to get compatibility score? hopefully :( alvin
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
  
  
  ######################################
  ###  Grouping Algorithm Functions  ###
  ######################################
  
  # Priority for grouping users:
  #   1. Compatibility
  #   2. Friends
  #   3. Schedule
  # 
  # Compatibility:
  #   User has 1+ meeting times (discussion_section_x's) in common with group
  def self.group_users
    puts "Cleaning up..."
    clean_up_groups
    puts "Group by friends..."
    group_by_friends
    puts "Group by time blocks..."
    group_by_time_blocks
    puts "taking care of leftovers.."
    group_ungrouped_users

  end
  
  ###  Clean Up Groups Functions  ###
  
  # Destroys all groups and memberships
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
  
  
  ###  Group By Friends Functions  ###
  
  # Creates groups and throws users with preferred teammates into them
  # 
  # User is grouped with all preferred teammates with two constraints:
  #   1. Preferred teammates are all compatible
  #   2. All preferred teammates can fit into the group given Group.max_group_size
  # 
  # Compatibility:
  #   User has 1+ meeting times (discussion_section_x's) in common with group
  def self.group_by_friends
    users_with_preferred_teammates = []
    users = User.all
    
    # construct a list of users with preferred taemmates
    users.each do |user|
      users_with_preferred_teammates << user.email if !user.preferred_teammates.blank?
    end
    
    # find a group for each user and his preferred_teammates
    # do this until all users with preferred teammates are grouped
    while !users_with_preferred_teammates.empty?
      user = User.where(:email => users_with_preferred_teammates.first).first  # ha!
      # user.parse_preferred_teammates
      find_group_for(user)
      group = user.groups.first
      users_with_preferred_teammates.delete(user.email)
      preferred_teammates = user.preferred_available_teammates
      preferred_teammates.each do |teammate|
        preferred_teammate = User.where(:email => teammate).first
        
        # preferred teammates can only join if they have a compatible meeting time with the group
        if preferred_teammate and group.has_compatible_meeting_time_with(preferred_teammate) and group.users.count < Group.max_group_size
          group.add_user(preferred_teammate, "friend")
        end
        
        # teammate should be deleted from lists regardless of if grouped or not
        # for sake of avoiding an infinite loop
        # ungrouped users will be dealt with later
        users_with_preferred_teammates.delete(teammate)
      end
    end
  end
  
  # Fits user into an existing group
  # Group must have space for user and all user's preferred teammates
  # User must be compatible with group
  # 
  # Compatibility:
  #   User has 1+ meeting times (discussion_section_x's) in common with group
  def self.find_group_for(user)
    groups = Group.all
    
    # if there are no groups, create one
    if groups.empty?
      group = Group.new(:name => "group_1", :creator => user.id)
      group.save
      group.add_user(user, "creator")
    # else fit the user and his preferred teammates into an existing group
    else
      groups.each do |group|
        # if group is not full
        if group.users.count < Group.max_group_size
          available_spots = Group.max_group_size - group.users.count
          spots_required = user.preferred_available_teammates.count + 1
          # if group has enough spots for current user and all his preferred teammates
          if available_spots >= spots_required
            # if at least 1 of user's monday availabilities mach up with the group's
            if user.groups.empty? and group.has_compatible_meeting_time_with(user)
              group.add_user(user, "meeting") # may want to change BACK to friend..
            end
          end
        end
      end
    end
    
    # if the user and his preferred teammates couldn't be fit into an existing 
    # group, create a new one
    if user.groups.empty?
      create_and_join_group(user)
    end
  end
  
  # Creates a new group with user as creator
  # Adds user to group
  def self.create_and_join_group(user)
    group = Group.create(:name => "group_#{Group.all.count + 1}", :creator => user.id)
    group.add_user(user, "creator")
  end
  
  # Determines a compatibility score between user and group, then creates membership
  # Membership also stores the compatibility score
  # 
  # **This function is fucking ugly. Why?
  #   1. Validating for if a user should be added to a group should not have to happen here
  #     a. checks AGAIN to make sure user has compatible meeting times with group
  #     b. checks AGAIN to make sure user is not in a group yet
  def add_user(user, reason)
    compatibility_score = 0
    group_leader = User.find(self.creator)
    
    # compatibility should be checked against the group schedule
    # but
    # compatibility score should be in respect to group leader's schedule
    # as to not shaft members that join later
    case reason
    when "creator"
      compatibility_score += 42
      
      self.initialize_group_meeting_times(user)
      self.initialize_group_schedule(user.schedule)  # leader must have a schedule..
      Membership.create(:group_id => self.id, :user_id => user.id, :compatibility_score => compatibility_score)
    when "friend"
      compatibility_score += 21
      compatibility_score += user.number_of_compatible_time_blocks_with(group_leader.schedule)
      
      # initializing <tt>group</tt> because of something funky going on with <tt>self</tt> in this context
      group = Group.where(:creator => self.creator).first
      if group.has_compatible_meeting_time_with(user) and user.groups.empty?
        group.update_group_meeting_times(user)
        group.update_group_schedule(user.schedule) if user.schedule != nil
        Membership.create(:group_id => self.id, :user_id => user.id, :compatibility_score => compatibility_score)
      end
    else
      compatibility_score += user.number_of_compatible_time_blocks_with(group_leader.schedule)
      
      # initializing <tt>group</tt> because of something funky going on with <tt>self</tt> in this context
      group = Group.where(:creator => self.creator).first
      if group.has_compatible_meeting_time_with(user) and user.groups.empty?
        group.update_group_meeting_times(user)
        group.update_group_schedule(user.schedule) if user.schedule != nil
        Membership.create(:group_id => self.id, :user_id => user.id, :compatibility_score => compatibility_score)
      end
    end
  end
  
  # Group meeting times = intersection of all user's meeting preferences
  # Really we only care about 0's (aka, the meeting time is not an option)
  def update_group_meeting_times(user)
    if self.discussion_section_1 > user.discussion_section_1
      self.discussion_section_1 = user.discussion_section_1
      self.save
    end
    if self.discussion_section_2 > user.discussion_section_2
      # logger.debug "kMEMBER discussion_section_2: #{user.email} #{user.discussion_section_2} | #{self.discussion_section_2}"
      self.discussion_section_2 = user.discussion_section_2
      self.save
    end
    if self.discussion_section_3 > user.discussion_section_3
      self.discussion_section_3 = user.discussion_section_3
      self.save
    end
  end
  
  # Group schedule = intersection of group schedule and <tt>schedule</tt>
  def update_group_schedule(schedule)
    self_days = self.schedule.days
    schedule_days = schedule.days
    
    self_days.each do |self_day|
      day_in_common = false
      schedule_days.each do |schedule_day|
        # if group's schedule and <tt>schedule</tt> both contain the same day
        if self_day.name == schedule_day.name
          self_day.time_blocks.each do |self_block|
            time_block_in_common = false
            schedule_day.time_blocks.each do |schedule_block|
              # if group's schedule and <tt>schedule</tt> both contain the same time_block
              if self_block.chunk_of_time == schedule_block.chunk_of_time
                # flag the day to not be deleted from group's schedule
                # only want to keep the day if there is a time_block in common in that day
                day_in_common = true
                time_block_in_common = true # flag the time_block to not be deleted from group's schedule
              end
            end
             # remove time_block from group's schedule if <tt>schedule</tt> does not have day
            self_block.destroy if !time_block_in_common
          end
        end
      end
      # remove day from group's schedule if <tt>schedule</tt> does not have day
      self_day.destroy if !day_in_common
    end
  end
  
  # Sets group meetings times to reflect the group leader's meeting preferences
  def initialize_group_meeting_times(creator)
    self.discussion_section_1 = creator.discussion_section_1
    self.discussion_section_2 = creator.discussion_section_2
    self.discussion_section_3 = creator.discussion_section_3
    self.save
  end
  
  # Creates a group schedule mirroring the group leader's schedule
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
  
  # Resets group meeting times to that of the group leader's
  # Changes group meeting times to reflect the whole group
  def reset_meeting_times
    leader = User.where(:id => self.creator).first
    self.initialize_group_meeting_times(leader)
    self.users.each do |user|
      self.update_group_meeting_times(user)
    end
  end
  
  # Destroys current group schedule
  # Re-creates schedule
  def reset_schedule
    leader = User.where(:id => self.creator).first
    self.initialize_group_schedule(leader.schedule)
    self.users.each do |user|
      self.update_group_schedule(user.schedule)
    end
  end
  
  # Returns true if group and user have 1+ monday availabilities in common
  def has_compatible_meeting_time_with(user)
    if (self.discussion_section_1 != 0) and (user.discussion_section_1 != 0)
      return true
    elsif (self.discussion_section_2 != 0) and (user.discussion_section_2 != 0)
      return true
    elsif (self.discussion_section_3 != 0) and (user.discussion_section_3 != 0)
      return true
    end
      
    return false
  end
  
  
  ###  Group By Time Blocks Functions  ###
  
  # 1. Fills up groups created by group_by_friends
  # 2. Continues to create and fill groups as long as there are <tt>smallest_group_size</tt>
  #    or more ungrouped, compatible users at the point of group creation
  # 
  # Compatibility:
  #   1. Set of users have 1+ meeting times (discussion_section_x's) in common
  #   2. Set of users have 1+ time blocks in common WITH GROUP LEADER
  #     a. This will be changed if friend grouping does not take priority over the group
  #        having 1+ time blocks in common
  def self.group_by_time_blocks
    # throw most compatible ungrouped users into the existings friend-based
    # groups
    fill_up_groups
    
    # smallest group size allowed for the last group created
    smallest_permitted_group_size = Group.max_group_size - 3
    number_of_potential_teammates = User.most_compatible_ungrouped_user.potential_teammate_count
    
    while number_of_potential_teammates > smallest_permitted_group_size
      create_and_join_group(User.most_compatible_ungrouped_user)
      
      # throw most compatible ungrouped users into the schedule-based group
      # just created
      fill_up_groups
      
      most_compatible_ungrouped_user = User.most_compatible_ungrouped_user
      if most_compatible_ungrouped_user != nil
        number_of_potential_teammates = most_compatible_ungrouped_user.potential_teammate_count
      else
        number_of_potential_teammates = 0
      end
    end
  end
  
  # Populates un-full groups with the most comaptible ungrouped users
  # 
  # This loops through all groups instead of being called as group.fill_with_ungrouped_users
  # because all groups are always filled at the same time
  # 
  # All groups will always be filled at the same time because users popped out of groups by
  # kung_foo_shuffle may have a place in a group created after the group they were popped out of
  # 
  # Each time fill_up_groups is called, we expect a slightly different set of 
  # ungrouped users anyway - so we might as well loop through all groups again to make sure
  # recently ungrouped users have the chance to join "new groups" they never had the chance to join
  # initially because the "new groups" didn't exist when the user was previously grouped
  def self.fill_up_groups
    groups = Group.all
    
    groups.each do |group|
      ungrouped_users = group.most_compatible_candidates
      free_spots = Group.max_group_size - group.users.count
      
      # fill up empty slots if there are eligible members
      free_spots.times do
        if !ungrouped_users.empty?
          group.add_user(ungrouped_users.first["user"], "schedule")
          
          # must update ungrouped_users since group meeting times aren't updated until a 
          # user is added to the group with group.add_user
          ungrouped_users = group.most_compatible_candidates
        end
      end
      
      # make sure group has the most compatible members possible
      # where all users considered are the current group members + all ungrouped users
      # group.kung_foo_shuffle
    end
  end
  
  # Returns a sorted array of hashes of ungrouped users
  # Array sorted by user scores
  # User score reflects compatiblity with group leader's schedule and compatiblity 
  # of meeting times
  def most_compatible_candidates
    ungrouped_users = []
    users = User.all
    group_leader = User.find(self.creator)

    # construct list of ungrouped users that are compatible with this group
    # where ungrouped_user => {user,score}
    # 
    # where a user is compatible with a group if the user has 1+ meeting times in common with
    # the group meeting times
    # 
    # scoring ungrouped users' compatibility with the current group:
    # score => +1 per time block in common with the group leader's schedule
    users.each do |user|
      if user.groups.empty?
        score = user.number_of_compatible_time_blocks_with(group_leader.schedule)
        if self.has_compatible_meeting_time_with(user)
          ungrouped_users << {"user" => user, "score" => score}
        end
      end
    end
    
    # returns ungrouped_users sorted by score, highest -> lowest
    ungrouped_users.sort! { |b,a| a["score"] <=> b["score"] }
  end
  
  # CURRENTLY ABANDONED - time cost too high in context :(
  # 
  # Shuffle ungrouped users into group so that group has the most
  # compatible members possible
  def kung_foo_shuffle
    ungrouped_users = self.most_compatible_candidates
    least_compatible_member_comaptibility_score = self.least_compatible_member.memberships.first.compatibility_score
    
    # while the highest-scoring non-grouped user is compatible with this group
    # while the highest-scoring non-grouped user has a higher compatibility score than the least compatible current group member
    # remove least compatible current group member and add the most compatbile non-grouped user
    while !ungrouped_users.empty? and ungrouped_users.first["score"] > least_compatible_member_comaptibility_score
      self.least_compatible_member.memberships.first.destroy
      self.reset_meeting_times
      self.reset_schedule
      self.add_user(ungrouped_users.pop["user"], "schedule")
      
      # must update ungrouped_users since group meeting times aren't updated until a 
      # user is added to the group with group.add_user
      ungrouped_users = self.most_compatible_candidates
      
      least_compatible_member_comaptibility_score = self.least_compatible_member.memberships.first.compatibility_score
    end
  end
  
  # Returns the least-compatible group member
  def least_compatible_member
    least_compatible_member = User.find(self.creator)
    lowest_compatibility_score = 42 # the highest possible score (aka, the group creator's score)
    group = Group.where(:creator => self.creator).first
    members = group.users
    
    members.each do |member|
      # logger.debug "NIL MEMBER: #{member.email} #{member.memberships}"
      member_score = member.memberships.first.compatibility_score
      if member_score < lowest_compatibility_score
        lowest_compatibility_score = member_score
        least_compatible_member = member
      end
    end
    
    least_compatible_member
  end
  
  
  ###  Group Ungrouped Users Functions  ###
  
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
