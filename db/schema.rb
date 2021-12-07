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

ActiveRecord::Schema.define(version: 2021_12_07_010222) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "calle"
    t.string "numero"
    t.string "departamento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "ciudad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "communes", force: :cascade do |t|
    t.string "comuna"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "tipo_documento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "numero"
    t.bigint "document_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_type_id"], name: "index_documents_on_document_type_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.date "fecha_gasto"
    t.integer "monto"
    t.bigint "motive_id", null: false
    t.bigint "month_id", null: false
    t.bigint "year_id", null: false
    t.bigint "document_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["document_id"], name: "index_expenses_on_document_id"
    t.index ["month_id"], name: "index_expenses_on_month_id"
    t.index ["motive_id"], name: "index_expenses_on_motive_id"
    t.index ["year_id"], name: "index_expenses_on_year_id"
  end

  create_table "fees", force: :cascade do |t|
    t.integer "cuota"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "months", force: :cascade do |t|
    t.string "mes_pago"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "motives", force: :cascade do |t|
    t.string "motivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string "metodo_pago"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "monto_pago"
    t.integer "saldo_acumulado"
    t.date "fecha_pago"
    t.integer "total_pago"
    t.bigint "payment_method_id", null: false
    t.bigint "user_id", null: false
    t.bigint "motive_id", null: false
    t.bigint "month_id", null: false
    t.bigint "year_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["month_id"], name: "index_payments_on_month_id"
    t.index ["motive_id"], name: "index_payments_on_motive_id"
    t.index ["payment_method_id"], name: "index_payments_on_payment_method_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
    t.index ["year_id"], name: "index_payments_on_year_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "telefono"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "rol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supplier_types", force: :cascade do |t|
    t.string "tipo_proveedor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "correo"
    t.bigint "supplier_type_id", null: false
    t.bigint "phone_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["phone_id"], name: "index_suppliers_on_phone_id"
    t.index ["supplier_type_id"], name: "index_suppliers_on_supplier_type_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "tipo"
    t.bigint "user_id", null: false
    t.bigint "address_id", null: false
    t.bigint "commune_id", null: false
    t.bigint "city_id", null: false
    t.bigint "region_id", null: false
    t.bigint "zip_code_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_units_on_address_id"
    t.index ["city_id"], name: "index_units_on_city_id"
    t.index ["commune_id"], name: "index_units_on_commune_id"
    t.index ["region_id"], name: "index_units_on_region_id"
    t.index ["user_id"], name: "index_units_on_user_id"
    t.index ["zip_code_id"], name: "index_units_on_zip_code_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_1"
    t.string "apellido_2"
    t.string "rut"
    t.string "correo"
    t.string "clave"
    t.bigint "role_id", null: false
    t.bigint "fee_id", null: false
    t.bigint "phone_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fee_id"], name: "index_users_on_fee_id"
    t.index ["phone_id"], name: "index_users_on_phone_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer "ano"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zip_codes", force: :cascade do |t|
    t.integer "codigo_postal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "documents", "document_types"
  add_foreign_key "expenses", "documents"
  add_foreign_key "expenses", "months"
  add_foreign_key "expenses", "motives"
  add_foreign_key "expenses", "years"
  add_foreign_key "payments", "months"
  add_foreign_key "payments", "motives"
  add_foreign_key "payments", "payment_methods"
  add_foreign_key "payments", "users"
  add_foreign_key "payments", "years"
  add_foreign_key "suppliers", "phones"
  add_foreign_key "suppliers", "supplier_types"
  add_foreign_key "units", "addresses"
  add_foreign_key "units", "cities"
  add_foreign_key "units", "communes"
  add_foreign_key "units", "regions"
  add_foreign_key "units", "users"
  add_foreign_key "units", "zip_codes"
  add_foreign_key "users", "fees"
  add_foreign_key "users", "phones"
  add_foreign_key "users", "roles"
end
