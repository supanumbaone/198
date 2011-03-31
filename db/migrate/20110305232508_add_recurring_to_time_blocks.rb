class AddRecurringToTimeBlocks < ActiveRecord::Migration
  def self.up
    add_column :time_blocks, :recurring, :boolean, :default => false
  end

  def self.down
    remove_column :time_blocks, :recurring
  end
end
