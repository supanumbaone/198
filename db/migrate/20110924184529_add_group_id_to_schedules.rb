class AddGroupIdToSchedules < ActiveRecord::Migration
  def self.up
    add_column :schedules, :group_id, :integer
  end

  def self.down
    remove_column :schedules, :group_id
  end
end
