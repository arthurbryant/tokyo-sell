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

ActiveRecord::Schema.define(version: 20160411121937) do

  create_table "item_details", force: :cascade do |t|
    t.integer  "item_id",        limit: 4
    t.text     "description",    limit: 65535, null: false
    t.text     "other_img_urls", limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "item_details", ["item_id"], name: "index_item_details_on_item_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.integer  "category_id", limit: 4,    null: false
    t.string   "name",        limit: 255,  null: false
    t.string   "top_img_url", limit: 2083, null: false
    t.integer  "price",       limit: 4,    null: false
    t.float    "star",        limit: 24,   null: false
    t.string   "asin",        limit: 255,  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "item_details", "items"
end
