class Schedule < ActiveRecord::Base
  has_many :days, :dependent => :destroy
  belongs_to :user
  belongs_to :group
  
  attr_accessible :name, :description, :user_id, :group_id
  
  def time_blocks_count
    time_blocks_count = 0
    
    self.days.each do |day|
      day.time_blocks.count.times { time_blocks_count += 1 }
    end
    
    time_blocks_count
  end
  
  def self.export_object
    users = User.all
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    blocks = %w(morning afternoon evening)
    schedule = [["0:0:","0:1:","0:2:"], ["1:0:","1:1:","1:2:"], ["2:0:","2:1:","2:2:"], ["3:0:","3:1:","3:2:"], ["4:0:","4:1:","4:2:"], ["5:0:","5:1:","5:2:"], ["6:0:","6:1:","6:2:"]]
    schedule_to_be_exported = []
    
    users.each do |user|
      if user.schedule
        user.schedule.days.each do |day|
          day.time_blocks.each do |block|
            schedule[days.index(day.name)][blocks.index(block.chunk_of_time)] += "#{user.email},"
          end
        end
      end
    end
    
    schedule.each do |block|
      block.each do |mini|
        schedule_to_be_exported << mini[0..(mini.size-2)]
      end
    end
    
    schedule_to_be_exported
  end
end
