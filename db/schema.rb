# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110404045459) do

  create_table "comments", :force => true do |t|
    t.integer  "commentable_id",   :default => 0
    t.string   "commentable_type", :default => ""
    t.string   "title",            :default => ""
    t.text     "body"
    t.string   "subject",          :default => ""
    t.integer  "user_id",          :default => 0,  :null => false
    t.integer  "group_id",         :default => 0,  :null => false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "days", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.text     "description"
    t.integer  "schedule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "invited_users"
    t.integer  "max_members"
    t.integer  "total_members"
    t.string   "privacy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator"
    t.string   "profile_image"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "time_blocks", :force => true do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "chunk_of_time"
    t.text     "description"
    t.integer  "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "recurring",     :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                     :default => "",             :null => false
    t.string   "encrypted_password",         :limit => 128, :default => "",             :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                             :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.text     "about"
    t.string   "location"
    t.string   "school"
    t.string   "occupation"
    t.string   "aim"
    t.string   "live"
    t.string   "skype"
    t.string   "gtalk"
    t.string   "phone"
    t.integer  "html"
    t.integer  "css"
    t.integer  "javascript"
    t.integer  "java"
    t.integer  "python"
    t.integer  "ruby_ror"
    t.integer  "sql"
    t.integer  "cpp"
    t.string   "other"
    t.boolean  "hide_email",                                :default => true
    t.boolean  "hide_phone",                                :default => true
    t.boolean  "hide_ims",                                  :default => true
    t.string   "birthday_privacy",                          :default => "absolute"
    t.string   "signup_status",                             :default => "account_step"
    t.string   "profile_image"
    t.boolean  "personal_information_added",                :default => false
    t.integer  "discussion_section_1",                      :default => 0
    t.integer  "discussion_section_2",                      :default => 0
    t.integer  "discussion_section_3",                      :default => 0
    t.text     "preferred_teammates"
    t.boolean  "admin",                                     :default => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
