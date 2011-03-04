class AddSignupStatusToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :signup_status, :string, :default => "account_step"
  end

  def self.down
    remove_column :users, :signup_status
  end
end
