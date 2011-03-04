class CreateDays < ActiveRecord::Migration
  def self.up
    create_table :days do |t|
      t.string :name
      t.date :date
      t.text :description
      t.integer :schedule_id
      t.timestamps
    end
  end

  def self.down
    drop_table :days
  end
end
