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

ActiveRecord::Schema.define(version: 20180814210535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chat_rooms", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.bigint "message_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_chat_rooms_on_message_id"
    t.index ["user_id"], name: "index_chat_rooms_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chat_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "usernames", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "f_name"
    t.string "l_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "c "
  end

  add_foreign_key "chat_rooms", "messages"
  add_foreign_key "chat_rooms", "users"
  add_foreign_key "messages", "users"
end