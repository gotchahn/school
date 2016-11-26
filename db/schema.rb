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

ActiveRecord::Schema.define(version: 20161126004123) do

  create_table "careers", force: true do |t|
    t.string   "slug"
    t.text     "name"
    t.text     "orientation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.text     "name"
    t.datetime "birthday_at"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "career_id"
    t.decimal  "graduation_index"
  end

  add_index "students", ["career_id"], name: "index_students_on_career_id"

  create_table "trophies", force: true do |t|
    t.integer  "points"
    t.text     "description"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trophies", ["student_id"], name: "index_trophies_on_student_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.text     "password_digest"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
