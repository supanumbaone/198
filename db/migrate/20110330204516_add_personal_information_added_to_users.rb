class AddPersonalInformationAddedToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :personal_information_added, :boolean, :default => false
  end

  def self.down
    remove_column :users, :personal_information_added
  end
end
