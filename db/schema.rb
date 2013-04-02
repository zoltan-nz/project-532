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

ActiveRecord::Schema.define(version: 20130328170301) do

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "business_id"
    t.integer  "department_id"
    t.integer  "parent_category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["business_id"], name: "index_categories_on_business_id"
  add_index "categories", ["department_id"], name: "index_categories_on_department_id"

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outlets", force: true do |t|
    t.string   "name"
    t.integer  "business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "outlets", ["business_id"], name: "index_outlets_on_business_id"

  create_table "pricing_labels", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_pricing_variants", force: true do |t|
    t.integer  "product_variant_id"
    t.integer  "product_pricing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_pricing_variants", ["product_pricing_id"], name: "index_product_pricing_variants_on_product_pricing_id"
  add_index "product_pricing_variants", ["product_variant_id"], name: "index_product_pricing_variants_on_product_variant_id"

  create_table "product_pricings", force: true do |t|
    t.integer  "product_id"
    t.integer  "pricing_label_id"
    t.integer  "product_size_id"
    t.float    "tax_1"
    t.float    "tax_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_pricings", ["pricing_label_id"], name: "index_product_pricings_on_pricing_label_id"
  add_index "product_pricings", ["product_id"], name: "index_product_pricings_on_product_id"
  add_index "product_pricings", ["product_size_id"], name: "index_product_pricings_on_product_size_id"

  create_table "product_sizes", force: true do |t|
    t.string   "label"
    t.float    "stock_multiplier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_unavailabilities", force: true do |t|
    t.integer  "outlet_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_unavailabilities", ["outlet_id"], name: "index_product_unavailabilities_on_outlet_id"
  add_index "product_unavailabilities", ["product_id"], name: "index_product_unavailabilities_on_product_id"

  create_table "product_variants", force: true do |t|
    t.string   "variant_type"
    t.string   "variant_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taxes", force: true do |t|
    t.integer  "business_id"
    t.string   "label"
    t.float    "tax_1"
    t.float    "tax_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taxes", ["business_id"], name: "index_taxes_on_business_id"

  create_table "templates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
