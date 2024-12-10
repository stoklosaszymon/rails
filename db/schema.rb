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

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "status", ["bought", "to_buy"]
  create_enum "units", ["kg", "g", "piece", "l", "ml"]

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "product_list_items", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "product_list_id"
    t.enum "status", default: "to_buy", null: false, enum_type: "status"
    t.float "quantity", default: 1.0
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
    t.enum "unit", enum_type: "units"
    t.bigint "product_category_id"
    t.bigint "user_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.string "session_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_lists", "users"
  add_foreign_key "products", "product_categories"
end
