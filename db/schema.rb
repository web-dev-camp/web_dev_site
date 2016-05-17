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

ActiveRecord::Schema.define(version: 20160517133538) do

  create_table "applies", force: :cascade do |t|
    t.integer  "primary_choice_id"
    t.integer  "secondary_choice_id"
    t.text     "comment"
    t.integer  "user_id"
    t.date     "sent"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "extra"
    t.date     "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "street"
    t.string   "city"
    t.string   "country"
    t.text     "school"
    t.text     "uni"
    t.text     "internship"
    t.text     "work"
    t.text     "projects"
    t.text     "soft_skills"
    t.text     "tech_skills"
    t.text     "interests"
    t.text     "motivation"
    t.text     "finance"
    t.text     "other"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.integer  "course_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
