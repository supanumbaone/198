class AddDiscussionSectionsAndPreferredTeammatesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :discussion_section_1, :integer, :default => 0
    add_column :users, :discussion_section_2, :integer, :default => 0
    add_column :users, :discussion_section_3, :integer, :default => 0
    add_column :users, :preferred_teammates, :string
  end

  def self.down
    remove_column :users, :preferred_teammates
    remove_column :users, :discussion_section_3
    remove_column :users, :discussion_section_2
    remove_column :users, :discussion_section_1
  end
end
