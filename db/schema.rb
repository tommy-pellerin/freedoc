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

ActiveRecord::Schema[7.1].define(version: 2024_02_08_103633) do
  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "appointment_id"
    t.index ["appointment_id"], name: "index_cities_on_appointment_id"
    t.index ["doctor_id"], name: "index_cities_on_doctor_id"
    t.index ["patient_id"], name: "index_cities_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "zip_code"
  end

  create_table "join_table_specialty_doctors", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "specialty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_join_table_specialty_doctors_on_doctor_id"
    t.index ["specialty_id"], name: "index_join_table_specialty_doctors_on_specialty_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name"
  end

end
