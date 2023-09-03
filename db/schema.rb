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

ActiveRecord::Schema[7.0].define(version: 2023_09_03_092706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_types", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.integer "duration"
    t.boolean "payment_required"
    t.integer "price"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_booking_types_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "status", default: 0
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "start_at"
    t.datetime "end_at"
    t.boolean "customer_paid", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.string "booking_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_link"], name: "index_users_on_booking_link", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "booking_types", "users"
end
