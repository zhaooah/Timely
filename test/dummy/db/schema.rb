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

ActiveRecord::Schema.define(version: 20140728201634) do

  create_table "enrollments", force: true do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timely_calendar_lists", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timely_calendars", force: true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "event_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calendarlist_id"
  end

  create_table "timely_events", force: true do |t|
    t.string   "title"
    t.boolean  "allDay"
    t.datetime "start"
    t.datetime "end"
    t.string   "className"
    t.boolean  "startEditable"
    t.boolean  "durationEditable"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "calendar_id"
  end

  add_index "timely_events", ["calendar_id"], name: "index_calendar_id"

end
