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

ActiveRecord::Schema.define(version: 20140204183114) do

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "apply"
    t.string   "location"
    t.string   "company_name"
    t.string   "company_url"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.boolean  "published"
  end

  add_index "jobs", ["published"], name: "index_jobs_on_published"
  add_index "jobs", ["token"], name: "index_jobs_on_token"

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

end
