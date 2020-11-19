# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_11_232819) do

  create_table "clients", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pay_method_id"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "pay_method_id"], name: "index_clients_on_user_id_and_pay_method_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "client_id"
    t.integer "rate"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "historials", force: :cascade do |t|
    t.integer "order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "seller_id"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id", "seller_id"], name: "index_orders_on_product_id_and_seller_id"
  end

  create_table "pay_methods", force: :cascade do |t|
    t.integer "card"
    t.integer "card_number"
    t.integer "card_type"
    t.integer "csv"
    t.integer "method"
    t.string "name"
    t.string "bank"
    t.date "date_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "user_id"
    t.integer "client_id"
    t.string "description"
    t.text "photo", limit: 6291455
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id", "user_id", "price"], name: "index_products_on_client_id_and_user_id_and_price"
  end

  create_table "sellers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.integer "raiting"
    t.integer "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "product_id"], name: "index_sellers_on_user_id_and_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
