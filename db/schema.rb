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

ActiveRecord::Schema[7.0].define(version: 2023_02_08_090112) do
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
    t.string "shift_time_id"
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

end
