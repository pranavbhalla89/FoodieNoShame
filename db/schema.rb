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

ActiveRecord::Schema.define(version: 20140303010203) do

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.integer  "zip"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "recommendations", force: true do |t|
    t.boolean  "like"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recommendations", ["restaurant_id"], name: "index_recommendations_on_restaurant_id"
  add_index "recommendations", ["user_id"], name: "index_recommendations_on_user_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "FBid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end