class Group < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :users, :through => :memberships
  has_many :comments, :dependent => :destroy
  
  # Alias for <tt>acts_as_taggable_on :tags</tt>: <tt>acts_as_taggable</tt>  
  acts_as_taggable_on :interests
  
  # Implementing acts_as_commentable_with_threading
  acts_as_commentable
  
  mount_uploader :profile_image, ProfileImageUploader
  
  attr_accessible :name, :description, :invited_users, :max_members, :total_members, :privacy, :creator, :interest_list,
                  :profile_image
                  
  validates_presence_of :profile_image, :interest_list, :name, :description, :privacy, :creator
  validates_length_of :name, :within => 2..75, :too_long => "must be at most 75 characters", :too_short => "must be at least 2 characters"
  validates_length_of :description, :within => 2..1500, :too_long => "must be at most 1500 characters", :too_short => "must be at least 2 characters"
  validates_size_of :profile_image, :maximum => 5.megabytes
end
