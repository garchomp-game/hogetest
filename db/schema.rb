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

ActiveRecord::Schema.define(version: 20170925124755) do

  create_table "borads", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "active"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "borad_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.integer "character_id"
    t.integer "host_id"
    t.integer "active_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.string "user_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frends", force: :cascade do |t|
    t.integer "user_id"
    t.integer "frend_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "comments"
  end

  create_table "tagnames", force: :cascade do |t|
    t.string "name"
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tagusers", force: :cascade do |t|
    t.string "name"
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'string　' for column 'race'

end
