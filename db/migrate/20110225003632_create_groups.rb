class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.text :invited_users
      t.integer :max_members
      t.integer :total_members
      t.string :privacy
      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
