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

ActiveRecord::Schema.define(version: 20180205065843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_code"
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
    t.string "product_image_file_name"
    t.string "product_image_content_type"
    t.integer "product_image_file_size"
    t.datetime "product_image_updated_at"
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

end
