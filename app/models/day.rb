class Day < ActiveRecord::Base
  has_many :time_blocks, :dependent => :destroy
  belongs_to :schedule
  
  attr_accessible :name, :date, :description, :schedule_id
  
  def self.exists?(date, schedule_id)
    day = Day.where(:date => date, :schedule_id => schedule_id)
    !day.empty?
  end
end
