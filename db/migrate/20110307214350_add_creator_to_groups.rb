class AddCreatorToGroups < ActiveRecord::Migration
  def self.up
    add_column :groups, :creator, :integer
  end

  def self.down
    remove_column :groups, :creator
  end
end
