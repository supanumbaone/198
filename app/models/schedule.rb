class Schedule < ActiveRecord::Base
  has_many :days, :dependent => :destroy
  belongs_to :user
  
  attr_accessible :name, :description, :user_id
end
