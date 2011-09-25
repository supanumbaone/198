class AddCompatibilityScoreToMemberships < ActiveRecord::Migration
  def self.up
    add_column :memberships, :compatibility_score, :integer, :default => 0
  end

  def self.down
    remove_column :memberships, :compatibility_score
  end
end
