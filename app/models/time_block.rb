class TimeBlock < ActiveRecord::Base
  belongs_to :day
  
  attr_accessible :name, :start_time, :end_time, :chunk_of_time, :description, :day_id, :recurring
  
  def self.remove_nils(blocks)
    blocks.each do |block|
      if block == ""
        blocks.delete(block)
      end
    end
    
    return blocks
  end
  
  # Does a TimeBlock exist with this chunk_of_time?
  def self.dexists?(chunk_of_time, day_id)
    time_block = TimeBlock.where(:chunk_of_time => chunk_of_time, :day_id => day_id)
    !time_block.empty?
  end
  
  # Does a TimeBlock exist with this start_time and end_time?
  def self.exists?(start_time, end_time, day_id, recurring)
    time_block = TimeBlock.where(:start_time => start_time, :end_time => end_time, :day_id => day_id, :recurring => recurring)
    !time_block.empty?
  end
  
  # Generates a list of times to be used in _complex_recurring_schedule.html.erb
  def self.get_time_list
    times = []
    i = 7
    
    while i < 22
      if i < 10
        times << "0#{i}:00:00 - 0#{i+1}:00:00"
      else
        times << "#{i}:00:00 - #{i+1}:00:00"
      end
      i += 1
    end
    
    return times
  end
end
