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

ActiveRecord::Schema.define(version: 20170524200854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dialogues", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "event_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_dialogues_on_event_id", using: :btree
    t.index ["teacher_id"], name: "index_dialogues_on_teacher_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "convener"
    t.string   "title"
    t.string   "description"
    t.string   "location"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dialogues", "events"
  add_foreign_key "dialogues", "teachers"
end
