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

ActiveRecord::Schema.define(version: 20150310100513) do

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

  create_table "world_cities", force: :cascade do |t|
    t.integer  "geonameid",         limit: 4
    t.string   "name",              limit: 255
    t.string   "asciiname",         limit: 255
    t.text     "alternatenames",    limit: 65535
    t.float    "latitude",          limit: 24
    t.float    "longitude",         limit: 24
    t.string   "feature_class",     limit: 255
    t.string   "feature_code",      limit: 255
    t.string   "country_code",      limit: 255
    t.string   "cc2",               limit: 255
    t.string   "admin1_code",       limit: 255
    t.string   "admin2_code",       limit: 255
    t.string   "admin3_code",       limit: 255
    t.string   "admin4_code",       limit: 255
    t.integer  "population",        limit: 4
    t.integer  "elevation",         limit: 4
    t.integer  "dem",               limit: 4
    t.string   "timezone",          limit: 255
    t.date     "modification_date"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
