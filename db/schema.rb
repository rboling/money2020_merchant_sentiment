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

ActiveRecord::Schema.define(version: 20151024225323) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchants", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "api_key"
    t.string   "name"
    t.string   "email"
    t.boolean  "bbb_accredited"
    t.integer  "bbb_rating"
    t.string   "feedzai_username"
    t.string   "feedzai_password"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "merchant_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "payments", ["merchant_id"], name: "index_payments_on_merchant_id", using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yelp_reviews", force: :cascade do |t|
    t.text     "review"
    t.integer  "stars"
    t.integer  "merchant_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "yelp_reviews", ["merchant_id"], name: "index_yelp_reviews_on_merchant_id", using: :btree

  add_foreign_key "payments", "merchants"
  add_foreign_key "payments", "users"
  add_foreign_key "yelp_reviews", "merchants"
end
