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

ActiveRecord::Schema.define(version: 20170413202416) do

  create_table "absents", force: :cascade do |t|
    t.integer  "student_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "subjectsto_classroom_id"
    t.index ["student_id"], name: "index_absents_on_student_id"
    t.index ["subjectsto_classroom_id"], name: "index_absents_on_subjectsto_classroom_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "name"
    t.string   "seccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.string   "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delays", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "subjectsto_classroom_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["student_id"], name: "index_delays_on_student_id"
    t.index ["subjectsto_classroom_id"], name: "index_delays_on_subjectsto_classroom_id"
  end

  create_table "lackcodes", force: :cascade do |t|
    t.string   "name"
    t.integer  "lack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lack_id"], name: "index_lackcodes_on_lack_id"
  end

  create_table "lacks", force: :cascade do |t|
    t.string   "tipodefalta"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "student_id"
    t.integer  "lack_id"
    t.integer  "lackcode_id"
    t.index ["lack_id"], name: "index_notifications_on_lack_id"
    t.index ["lackcode_id"], name: "index_notifications_on_lackcode_id"
    t.index ["student_id"], name: "index_notifications_on_student_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date     "start_at"
    t.date     "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "classroom_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "representante1"
    t.string   "representante2"
    t.string   "email1"
    t.string   "email2"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "birthdate"
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.date     "hora"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subjects_on_user_id"
  end

  create_table "subjectsto_classrooms", force: :cascade do |t|
    t.integer  "schedule_id"
    t.integer  "subject_id"
    t.integer  "classroom_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "day_id"
    t.integer  "user_id"
    t.index ["classroom_id"], name: "index_subjectsto_classrooms_on_classroom_id"
    t.index ["day_id"], name: "index_subjectsto_classrooms_on_day_id"
    t.index ["schedule_id"], name: "index_subjectsto_classrooms_on_schedule_id"
    t.index ["subject_id"], name: "index_subjectsto_classrooms_on_subject_id"
    t.index ["user_id"], name: "index_subjectsto_classrooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "birthdate"
    t.string   "gender"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
