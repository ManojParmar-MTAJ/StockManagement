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

ActiveRecord::Schema.define(version: 20180312084216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "email"
    t.string "phone_no"
    t.string "address"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_code"
    t.string "image"
    t.string "brand"
    t.string "product_category"
    t.string "unit"
    t.integer "cgst"
    t.integer "sgst"
    t.integer "product_cost"
    t.integer "product_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "sales", force: :cascade do |t|
    t.string "customer_id"
    t.string "product_id"
    t.string "payment_status"
    t.string "sales_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit"
  end

  create_table "sales_returns", force: :cascade do |t|
    t.integer "sale_id"
    t.integer "customer_id"
    t.integer "product_id"
    t.date "salesreturn_date"
    t.integer "unit"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "supplier_id"
    t.string "product_id"
    t.string "date"
    t.string "status"
    t.string "total"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "unit"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplier_name"
    t.string "product_name"
    t.string "company_name"
    t.string "address"
    t.string "city_name"
    t.string "contact_no"
    t.string "gst_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
