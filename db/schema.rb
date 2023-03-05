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

ActiveRecord::Schema[7.0].define(version: 2023_02_14_114515) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "attendences", force: :cascade do |t|
    t.string "employees_id"
    t.string "departments_id"
    t.datetime "in_time", precision: nil
    t.datetime "out_time", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "dep_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments_employees", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "department_id", null: false
  end

  create_table "emp_details", force: :cascade do |t|
    t.integer "employess_id", null: false
    t.integer "departments_id", null: false
    t.integer "salary_id", null: false
    t.integer "shift_times_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departments_id"], name: "index_emp_details_on_departments_id"
    t.index ["employess_id"], name: "index_emp_details_on_employess_id"
    t.index ["salary_id"], name: "index_emp_details_on_salary_id"
    t.index ["shift_times_id"], name: "index_emp_details_on_shift_times_id"
  end

  create_table "emp_travel_expenditures", force: :cascade do |t|
    t.string "employees_id"
    t.string "departments_id"
    t.string "travel_from"
    t.string "travel_to"
    t.time "on_date"
    t.date "from_date"
    t.date "to_date"
    t.string "reason_for_travel"
    t.string "mode_of_transportation"
    t.string "bill_number"
    t.string "paid_amt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emp_travels", force: :cascade do |t|
    t.string "employees_id"
    t.string "departments_id"
    t.string "travel_from"
    t.string "travel_to"
    t.time "on_date"
    t.date "from_date"
    t.date "to_date"
    t.string "reason_for_travel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "mobile"
    t.string "address"
    t.string "aadharcard"
    t.string "pancard"
    t.string "village"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "joining_emps", force: :cascade do |t|
    t.string "employees_id"
    t.string "departments_id"
    t.string "salary"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_emps", force: :cascade do |t|
    t.string "employees_id"
    t.string "departments_id"
    t.date "start_date"
    t.date "end_date"
    t.string "total_days"
    t.string "leave_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "basic"
    t.integer "da"
    t.integer "hra"
    t.integer "pf"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shift_times", force: :cascade do |t|
    t.string "name_shift"
    t.integer "total_hours"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "total_hours"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "emp_details", "departments", column: "departments_id"
  add_foreign_key "emp_details", "employesses"
  add_foreign_key "emp_details", "salaries"
  add_foreign_key "emp_details", "shift_times", column: "shift_times_id"
end
