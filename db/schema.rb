# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120904213732) do

  create_table "global_levels", :force => true do |t|
    t.integer  "level"
    t.integer  "xp_req"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reasons", :force => true do |t|
    t.integer   "topic_id"
    t.string    "title"
    t.text      "description"
    t.string    "url1"
    t.string    "url2"
    t.string    "url3"
    t.integer   "score",       :default => 0
    t.boolean   "is_approved", :default => false
    t.timestamp "created_at",                     :null => false
    t.timestamp "updated_at",                     :null => false
    t.string    "question"
    t.string    "correct"
    t.string    "wrong1"
    t.string    "wrong2"
    t.string    "wrong3"
    t.string    "wrong4"
    t.boolean   "is_pro"
    t.boolean   "is_intro"
    t.text      "url"
  end

  create_table "scorings", :force => true do |t|
    t.integer   "user_id"
    t.integer   "topic_id"
    t.integer   "reason_id"
    t.integer   "vote"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer   "topic_id"
    t.integer   "reason_id"
    t.integer   "user_id"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
    t.boolean   "is_quiz"
    t.string    "answer"
    t.integer   "score"
  end

  create_table "topic_levels", :force => true do |t|
    t.integer  "level"
    t.integer  "xp_req"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topic_user_levels", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.integer  "level",      :default => 0
    t.integer  "points",     :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "topics", :force => true do |t|
    t.string    "title"
    t.text      "description"
    t.integer   "score",       :default => 0
    t.boolean   "is_approved", :default => false
    t.timestamp "created_at",                     :null => false
    t.timestamp "updated_at",                     :null => false
    t.string    "thumbnail"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.boolean  "is_admin",     :default => false
    t.boolean  "is_temp_user", :default => true
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "level",        :default => 1
    t.integer  "xp",           :default => 0
  end

end
