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

ActiveRecord::Schema.define(version: 2021_02_08_233941) do

  create_table "Classes_UserStudents", id: false, force: :cascade do |t|
    t.integer "Class_id", null: false
    t.integer "UserStudent_id", null: false
    t.index "\"class_id\", \"user_student_id\"", name: "index_Classes_UserStudents_on_class_id_and_user_student_id"
    t.index "\"user_student_id\", \"class_id\"", name: "index_Classes_UserStudents_on_user_student_id_and_class_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "comment_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_student_id"
    t.integer "note_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.datetime "note_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "class_id"
    t.integer "user_student_id"
  end

  create_table "user_students", force: :cascade do |t|
    t.string "namne"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_user_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_students_on_reset_password_token", unique: true
  end

end
