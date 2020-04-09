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

ActiveRecord::Schema.define(version: 2020_04_09_123117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "assos", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "zipcode"
    t.string "city"
    t.float "lat"
    t.float "long"
    t.string "phone"
    t.string "email"
    t.integer "members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.bigint "user_id"
    t.index ["region_id"], name: "index_assos_on_region_id"
    t.index ["user_id"], name: "index_assos_on_user_id"
  end

  create_table "ateliers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "slots"
    t.integer "min_age"
    t.integer "max_age"
    t.text "media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "asso_id"
    t.bigint "metier_id"
    t.bigint "place_id"
    t.bigint "item_id"
    t.index ["asso_id"], name: "index_ateliers_on_asso_id"
    t.index ["item_id"], name: "index_ateliers_on_item_id"
    t.index ["metier_id"], name: "index_ateliers_on_metier_id"
    t.index ["place_id"], name: "index_ateliers_on_place_id"
  end

  create_table "departements", force: :cascade do |t|
    t.string "name"
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "region_id"
    t.index ["region_id"], name: "index_departements_on_region_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.integer "slots"
    t.integer "min_age", limit: 2
    t.integer "max_age", limit: 2
    t.string "media"
    t.time "start_hour"
    t.time "end_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "place_id"
    t.bigint "asso_id"
    t.index ["asso_id"], name: "index_events_on_asso_id"
    t.index ["place_id"], name: "index_events_on_place_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "media"
    t.text "description"
    t.time "build_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_metiers", id: false, force: :cascade do |t|
    t.bigint "metier_id", null: false
    t.bigint "item_id", null: false
    t.index ["item_id", "metier_id"], name: "index_items_metiers_on_item_id_and_metier_id"
    t.index ["metier_id", "item_id"], name: "index_items_metiers_on_metier_id_and_item_id"
  end

  create_table "items_tools", id: false, force: :cascade do |t|
    t.bigint "tool_id", null: false
    t.bigint "item_id", null: false
    t.index ["item_id", "tool_id"], name: "index_items_tools_on_item_id_and_tool_id"
    t.index ["tool_id", "item_id"], name: "index_items_tools_on_tool_id_and_item_id"
  end

  create_table "metiers", force: :cascade do |t|
    t.string "name", limit: 150
    t.string "media", limit: 400
    t.text "training"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metiers_tools", id: false, force: :cascade do |t|
    t.bigint "tool_id", null: false
    t.bigint "metier_id", null: false
    t.index ["metier_id", "tool_id"], name: "index_metiers_tools_on_metier_id_and_tool_id"
    t.index ["tool_id", "metier_id"], name: "index_metiers_tools_on_tool_id_and_metier_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "zipcode"
    t.string "city"
    t.float "lat"
    t.float "long"
    t.string "phone"
    t.string "region"
    t.text "infos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.integer "num"
    t.string "uppername"
    t.string "displayname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.string "media"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "metier_id"
    t.index ["metier_id"], name: "index_users_on_metier_id"
  end

  add_foreign_key "assos", "regions"
  add_foreign_key "assos", "users"
  add_foreign_key "ateliers", "assos"
  add_foreign_key "ateliers", "items"
  add_foreign_key "ateliers", "metiers"
  add_foreign_key "ateliers", "places"
  add_foreign_key "departements", "regions"
  add_foreign_key "events", "assos"
  add_foreign_key "events", "places"
  add_foreign_key "users", "metiers"
end
