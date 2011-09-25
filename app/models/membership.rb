class Membership < ActiveRecord::Base
  attr_accessible :user_id, :group_id, :compatibility_score
  belongs_to :user
  belongs_to :group
end
