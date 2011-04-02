class Schedule < ActiveRecord::Base
  has_many :days, :dependent => :destroy
  belongs_to :user
  
  attr_accessible :name, :description, :user_id
  
  def self.export_object
    users = User.all
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    blocks = %w(morning afternoon evening)
    schedule = [["0:1:","0:2:","0:3:"], ["1:1:","1:2:","1:3:"], ["2:1:","2:2:","2:3:"], ["3:1:","3:2:","3:3:"], ["4:1:","4:2:","4:3:"], ["5:1:","5:2:","5:3:"], ["6:1:","6:2:","6:3:"]]
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
