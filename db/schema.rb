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

ActiveRecord::Schema.define(version: 20140601024937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: true do |t|
    t.date     "recorded_at_date"
    t.time     "recorded_at_time"
    t.float    "temperature"
    t.boolean  "disturbed"
    t.boolean  "intercourse"
    t.boolean  "protected"
    t.string   "cervix_firmness"
    t.string   "cervix_height"
    t.string   "cirvix_openness"
    t.string   "flow_type"
    t.integer  "flow_volume"
    t.string   "ferning"
    t.string   "opk"
    t.string   "pregancy_test"
    t.boolean  "ovulatory_pain"
    t.boolean  "breast_tenderness"
    t.boolean  "breast_fullness"
    t.boolean  "alcohol"
    t.boolean  "cramps"
    t.boolean  "exercise"
    t.boolean  "travel"
    t.boolean  "ibuprofen"
    t.boolean  "tylenol"
    t.boolean  "multivitamin"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "manual_time"
  end

  add_index "entries", ["user_id", "recorded_at_date"], name: "index_entries_on_user_id_and_recorded_at_date", unique: true, using: :btree

  create_table "users", force: true do |t|
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
    t.string   "username"
    t.time     "default_time"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
