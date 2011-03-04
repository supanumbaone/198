class AddPrivacyToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :hide_email, :boolean, :default => true
    add_column :users, :hide_phone, :boolean, :default => true
    add_column :users, :hide_ims, :boolean, :default => true
    add_column :users, :birthday_privacy, :string, :default => 'absolute'
  end

  def self.down
    remove_column :users, :birthday_privacy
    remove_column :users, :hide_ims
    remove_column :users, :hide_phone
    remove_column :users, :hide_email
  end
end
