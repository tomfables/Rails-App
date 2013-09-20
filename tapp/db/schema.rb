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

ActiveRecord::Schema.define(version: 20130827232153) do

  create_table "accounts", primary_key: "autoid", force: true do |t|
    t.string "fname"
    t.string "lname"
    t.string "username"
    t.string "pwd"
  end

  create_table "show_to_times_b", primary_key: "autoid", force: true do |t|
    t.integer "showid"
    t.string  "date"
    t.string  "time"
  end

  create_table "show_to_timesbb", force: true do |t|
    t.string   "showid"
    t.string   "date"
    t.string   "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows", force: true do |t|
    t.string   "sname"
    t.integer  "smax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tickets", primary_key: "autoid", force: true do |t|
    t.string "ticketid"
    t.string "fname"
    t.string "lname"
    t.string "showid"
    t.string "number of seats"
    t.string "paid"
    t.string "seating_note"
  end

end
