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

ActiveRecord::Schema.define(version: 20150913111813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.string   "region"
    t.boolean  "spicy"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.string   "cooking_technique"
    t.string   "main_ingredient"
    t.text     "other_ingredients"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "cuisine_id"
    t.integer  "food_id"
  end

  add_index "dishes", ["cuisine_id"], name: "index_dishes_on_cuisine_id", using: :btree
  add_index "dishes", ["food_id"], name: "index_dishes_on_food_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.boolean  "meat_based"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dishes", "cuisines"
  add_foreign_key "dishes", "foods"
end
