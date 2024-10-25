# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_14_201558) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "name"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "product_list_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "product_list_id"
    t.index ["product_id"], name: "index_product_list_items_on_product_id"
    t.index ["product_list_id"], name: "index_product_list_items_on_product_list_id"
  end

  create_table "product_lists", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_product_lists_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.bigint "product_category_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "session_token"
  end

  add_foreign_key "product_lists", "users"
  add_foreign_key "products", "product_categories"
end
