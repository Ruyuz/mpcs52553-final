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

ActiveRecord::Schema.define(version: 0) do

  create_table "concerts", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "date"
    t.string "time"
    t.text "address"
    t.text "poster_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "concert_id"
    t.datetime "update_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["concert_id"], name: "index_purchases_on_concert_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.boolean "is_admin", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
