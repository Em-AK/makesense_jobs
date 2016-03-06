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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160306164233) do
=======
ActiveRecord::Schema.define(version: 20160227041228) do
>>>>>>> be4db0a61fabcf6929e041a49a99399ac6cd2e96

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "jobs", force: :cascade do |t|
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
    t.string   "logo"
    t.boolean  "highlighted"
    t.integer  "recruiter_id"
  end

  add_index "jobs", ["published"], name: "index_jobs_on_published", using: :btree
  add_index "jobs", ["recruiter_id"], name: "index_jobs_on_recruiter_id", using: :btree
  add_index "jobs", ["token"], name: "index_jobs_on_token", using: :btree

<<<<<<< HEAD
  create_table "recruiters", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "recruiters", ["email"], name: "index_recruiters_on_email", unique: true, using: :btree
  add_index "recruiters", ["reset_password_token"], name: "index_recruiters_on_reset_password_token", unique: true, using: :btree

=======
>>>>>>> be4db0a61fabcf6929e041a49a99399ac6cd2e96
  create_table "subscribers", force: :cascade do |t|
    t.string   "email"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscribers", ["job_id"], name: "index_subscribers_on_job_id", using: :btree

<<<<<<< HEAD
  add_foreign_key "jobs", "recruiters"
=======
>>>>>>> be4db0a61fabcf6929e041a49a99399ac6cd2e96
end
