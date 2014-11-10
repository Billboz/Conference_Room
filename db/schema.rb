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

ActiveRecord::Schema.define(version: 20141110191725) do

  create_table "campus", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.integer  "phone_number"
    t.integer  "zip_code"
    t.string   "street_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.string   "notes"
    t.string   "event"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "room_id"
  end

  add_index "reservations", ["room_id"], name: "index_reservations_on_room_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "sq_ft"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.integer  "campus_id"
  end

  add_index "rooms", ["campus_id"], name: "index_rooms_on_campus_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role",       limit: 25, default: "student"
    t.integer  "campus_id"
  end

  add_index "users", ["campus_id"], name: "index_users_on_campus_id"

end
