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

ActiveRecord::Schema.define(version: 2019_09_22_075246) do

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "brand_name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "category_name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "color_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "orders_id", null: false
    t.bigint "product_details_id", null: false
    t.bigint "promotions_products_id", null: false
    t.string "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["orders_id"], name: "index_order_details_on_orders_id"
    t.index ["product_details_id"], name: "index_order_details_on_product_details_id"
    t.index ["promotions_products_id"], name: "index_order_details_on_promotions_products_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "customer_name"
    t.string "customer_address"
    t.string "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "products_id", null: false
    t.bigint "colors_id", null: false
    t.bigint "size_id", null: false
    t.integer "quantity"
    t.string "import_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["colors_id"], name: "index_product_details_on_colors_id"
    t.index ["products_id"], name: "index_product_details_on_products_id"
    t.index ["size_id"], name: "index_product_details_on_size_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "categories_id", null: false
    t.bigint "brands_id", null: false
    t.string "decripton"
    t.bigint "images_id", null: false
    t.string "unit_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brands_id"], name: "index_products_on_brands_id"
    t.index ["categories_id"], name: "index_products_on_categories_id"
    t.index ["images_id"], name: "index_products_on_images_id"
  end

  create_table "promotions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "promotion_name"
    t.string "amount"
    t.string "decription"
    t.bigint "images_id", null: false
    t.datetime "date_start"
    t.datetime "date_close"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["images_id"], name: "index_promotions_on_images_id"
  end

  create_table "promotions_products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "promotions_id", null: false
    t.bigint "products_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["products_id"], name: "index_promotions_products_on_products_id"
    t.index ["promotions_id"], name: "index_promotions_products_on_promotions_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "roleName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "size_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "date_of_birth"
    t.bigint "roles_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["roles_id"], name: "index_users_on_roles_id"
  end

  add_foreign_key "order_details", "orders", column: "orders_id"
  add_foreign_key "order_details", "product_details", column: "product_details_id"
  add_foreign_key "order_details", "promotions_products", column: "promotions_products_id"
  add_foreign_key "product_details", "colors", column: "colors_id"
  add_foreign_key "product_details", "products", column: "products_id"
  add_foreign_key "product_details", "sizes"
  add_foreign_key "products", "brands", column: "brands_id"
  add_foreign_key "products", "categories", column: "categories_id"
  add_foreign_key "products", "images", column: "images_id"
  add_foreign_key "promotions", "images", column: "images_id"
  add_foreign_key "promotions_products", "products", column: "products_id"
  add_foreign_key "promotions_products", "promotions", column: "promotions_id"
  add_foreign_key "users", "roles", column: "roles_id"
end
