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

ActiveRecord::Schema.define(version: 20161109031318) do

  create_table "books", primary_key: "ISBN", id: :string, force: :cascade do |t|
    t.string   "book_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "material_id"
    t.index ["ISBN"], name: "sqlite_autoindex_books_1", unique: true
    t.index ["material_id"], name: "index_books_on_material_id"
  end

  create_table "courses", primary_key: "course_id", id: :string, force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "material_id"
    t.index ["course_id"], name: "sqlite_autoindex_courses_1", unique: true
    t.index ["material_id"], name: "index_courses_on_material_id"
  end

  create_table "helps", primary_key: "help_id", id: :string, force: :cascade do |t|
    t.text     "question"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["help_id"], name: "sqlite_autoindex_helps_1", unique: true
  end

  create_table "materials", primary_key: "material_id", id: :string, force: :cascade do |t|
    t.string   "books"
    t.string   "Syllabus"
    t.text     "notes"
    t.string   "professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "course_id"
    t.string   "book_id"
    t.string   "note_id"
    t.string   "syllabi_id"
    t.index ["book_id"], name: "index_materials_on_book_id"
    t.index ["course_id"], name: "index_materials_on_course_id"
    t.index ["material_id"], name: "sqlite_autoindex_materials_1", unique: true
    t.index ["note_id"], name: "index_materials_on_note_id"
    t.index ["syllabi_id"], name: "index_materials_on_syllabi_id"
  end

  create_table "notes", primary_key: "note_id", id: :string, force: :cascade do |t|
    t.text     "note"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "material_id"
    t.index ["material_id"], name: "index_notes_on_material_id"
    t.index ["note_id"], name: "sqlite_autoindex_notes_1", unique: true
  end

  create_table "reviews", primary_key: "review_id", id: :string, force: :cascade do |t|
    t.text     "review"
    t.string   "email"
    t.string   "professor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "course_id"
    t.string   "user_id"
    t.index ["course_id"], name: "index_reviews_on_course_id"
    t.index ["review_id"], name: "sqlite_autoindex_reviews_1", unique: true
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "syllabis", primary_key: "syllabus_id", id: :string, force: :cascade do |t|
    t.string   "syllabus_title"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "material_id"
    t.index ["material_id"], name: "index_syllabis_on_material_id"
    t.index ["syllabus_id"], name: "sqlite_autoindex_syllabis_1", unique: true
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
