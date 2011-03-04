class CreateTimeBlocks < ActiveRecord::Migration
  def self.up
    create_table :time_blocks do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :chunk_of_time
      t.text :description
      t.integer :day_id
      t.timestamps
    end
  end

  def self.down
    drop_table :time_blocks
  end
end
