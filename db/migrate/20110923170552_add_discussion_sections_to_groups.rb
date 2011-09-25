class AddDiscussionSectionsToGroups < ActiveRecord::Migration
  def self.up
    add_column :groups, :discussion_section_1, :integer, :default => 3
    add_column :groups, :discussion_section_2, :integer, :default => 3
    add_column :groups, :discussion_section_3, :integer, :default => 3
  end

  def self.down
    remove_column :groups, :discussion_section_3
    remove_column :groups, :discussion_section_2
    remove_column :groups, :discussion_section_1
  end
end
