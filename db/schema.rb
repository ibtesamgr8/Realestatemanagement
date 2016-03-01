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

ActiveRecord::Schema.define(version: 20160226171953) do

  create_table "allottees", force: :cascade do |t|
    t.string   "registration_no"
    t.string   "name"
    t.string   "cnic_no"
    t.string   "cell_no"
    t.string   "email_id"
    t.string   "curren_address"
    t.string   "other_address"
    t.string   "registration_date"
    t.string   "description"
    t.string   "status"
    t.string   "name_of_kin"
    t.string   "kin_cnic"
    t.string   "kin_address"
    t.string   "kin_cell_no"
    t.string   "relation_with_kin"
    t.integer  "plot_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "categorytype"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "docs", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plots", force: :cascade do |t|
    t.string   "plot_number"
    t.string   "membership"
    t.text     "desciption"
    t.boolean  "is_corner"
    t.boolean  "is_westopen"
    t.integer  "category_id"
    t.integer  "size_of_plot"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.integer  "role"
    t.string   "docs"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
