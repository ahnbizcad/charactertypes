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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140109014318) do

  create_table "characters", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_id"
  end

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "character_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "declarations", force: true do |t|
    t.integer  "user_id"
    t.integer  "character_id"
    t.integer  "personality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personalities", force: true do |t|
    t.string   "stype"
    t.string   "mtype"
    t.string   "quadra"
    t.string   "cf1"
    t.string   "cf2"
    t.string   "cf3"
    t.string   "cf4"
    t.string   "cf5"
    t.string   "cf6"
    t.string   "cf7"
    t.string   "cf8"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slabel"
  end

  create_table "pictures", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "path"
    t.integer  "show_id"
    t.integer  "character_id"
    t.integer  "user_id"
  end

  create_table "shows", force: true do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "show_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "characters_count", default: 0
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
    t.string   "password"
    t.string   "email"
  end

end
