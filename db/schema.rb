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

ActiveRecord::Schema.define(version: 20130910172802) do

  create_table "admin_applications", force: true do |t|
    t.string   "application_id"
    t.string   "application_name"
    t.string   "description"
    t.string   "logo_image"
    t.string   "slogan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_roles", force: true do |t|
    t.string   "role_id"
    t.string   "role_name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_user_in_roles", force: true do |t|
    t.string   "user_ids"
    t.string   "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_user_members", force: true do |t|
    t.string   "user_id"
    t.string   "email"
    t.string   "password"
    t.string   "password_black"
    t.string   "password_salt"
    t.boolean  "is_locked_out",              default: false
    t.boolean  "is_approved",                default: false
    t.datetime "last_login_date"
    t.datetime "last_password_changed_date"
    t.datetime "last_lock_out_date"
    t.string   "last_login_at"
    t.string   "password_question"
    t.string   "password_answer"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_user_profiles", force: true do |t|
    t.string   "user_id"
    t.string   "image"
    t.string   "display_name"
    t.date     "date_of_birth"
    t.string   "phone_number"
    t.string   "address"
    t.string   "yahoo_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_user_ratings", force: true do |t|
    t.string   "user_id"
    t.decimal  "count",      default: 0.0
    t.decimal  "total_star", default: 0.0
    t.string   "peoples"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "user_id"
    t.string   "user_name"
    t.string   "lower_user_name"
    t.boolean  "is_anonymous"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
