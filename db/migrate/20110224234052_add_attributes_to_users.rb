class AddAttributesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :date
    add_column :users, :about, :text
    add_column :users, :location, :string
    add_column :users, :school, :string
    add_column :users, :occupation, :string
    add_column :users, :aim, :string
    add_column :users, :live, :string
    add_column :users, :skype, :string
    add_column :users, :gtalk, :string
    add_column :users, :phone, :string
    add_column :users, :html, :integer
    add_column :users, :css, :integer
    add_column :users, :javascript, :integer
    add_column :users, :java, :integer
    add_column :users, :python, :integer
    add_column :users, :ruby_ror, :integer
    add_column :users, :sql, :integer
    add_column :users, :cpp, :integer
    add_column :users, :other, :string
  end

  def self.down
    remove_column :other, :other
    remove_column :table_name, :column_name
    remove_column :users, :cpp
    remove_column :users, :sql
    remove_column :users, :ruby_ror
    remove_column :users, :python
    remove_column :users, :java
    remove_column :users, :javascript
    remove_column :users, :css
    remove_column :users, :html
    remove_column :users, :phone
    remove_column :users, :gtalk
    remove_column :users, :skype
    remove_column :users, :live
    remove_column :users, :aim
    remove_column :users, :occupation
    remove_column :users, :school
    remove_column :users, :location
    remove_column :users, :about
    remove_column :users, :birthday
    remove_column :users, :last_name
    remove_column :users, :first_name
  end
end