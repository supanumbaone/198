class AddProfileImageToGroups < ActiveRecord::Migration
  def self.up
    add_column :groups, :profile_image, :string
  end

  def self.down
    remove_column :groups, :profile_image
  end
end
