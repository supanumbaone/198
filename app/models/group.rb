class Group < ActiveRecord::Base
  attr_accessible :name, :description, :invited_users, :max_members, :total_members, :privacy
end
