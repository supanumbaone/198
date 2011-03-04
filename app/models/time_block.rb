class TimeBlock < ActiveRecord::Base
  belongs_to :day
  
  attr_accessible :name, :start_time, :end_time, :chunk_of_time, :description, :day_id
  
  def self.remove_nils(blocks)
    blocks.each do |block|
      if block == ""
        blocks.delete(block)
      end
    end
    
    return blocks
  end
  
  def self.exists?(chunk_of_time, day_id)
    time_block = TimeBlock.where(:chunk_of_time => chunk_of_time, :day_id => day_id)
    !time_block.empty?
  end
end
