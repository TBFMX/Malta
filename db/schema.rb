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

ActiveRecord::Schema.define(version: 20140521172804) do

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.decimal  "yield"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "juicers", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.integer  "juice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "juices", force: true do |t|
    t.string   "name"
    t.string   "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "juiceweeks", force: true do |t|
    t.date     "date"
    t.integer  "juicer_id"
    t.integer  "juice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.integer  "juice_id"
    t.integer  "ingredient_id"
    t.decimal  "portion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
