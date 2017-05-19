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

ActiveRecord::Schema.define(version: 20170421103827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.integer  "scale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "choices", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "user1_choices", array: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user2_choices", array: true
  end

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.boolean  "user1_like"
    t.boolean  "user2_like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "match_id"
    t.string   "message"
    t.boolean  "read"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sent_by_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.integer  "district_id"
    t.integer  "cuisine_id"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "timeslots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "time"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.integer  "cuisine_id"
    t.integer  "district_id"
    t.integer  "budget_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "image"
    t.string   "gender"
    t.integer  "timeslot_id"
    t.string   "gender_preference"
  end

end
