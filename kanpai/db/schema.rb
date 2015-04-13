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

ActiveRecord::Schema.define(version: 20150407161402) do

  create_table "baskets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "category",    limit: 255
    t.text     "description", limit: 65535
    t.string   "image_url",   limit: 255
    t.decimal  "price",                     precision: 10
    t.string   "season",      limit: 255
    t.date     "date"
    t.string   "duration",    limit: 255
    t.string   "tags",        limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "address",     limit: 255
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "experience_id", limit: 4
    t.integer  "basket_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "line_items", ["basket_id"], name: "index_line_items_on_basket_id", using: :btree
  add_index "line_items", ["experience_id"], name: "index_line_items_on_experience_id", using: :btree

  add_foreign_key "line_items", "baskets"
  add_foreign_key "line_items", "experiences"
end
