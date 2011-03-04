class AddProfileImageToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :profile_image, :string
  end

  def self.down
    remove_column :users, :profile_image
  end
end
