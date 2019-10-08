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

ActiveRecord::Schema.define(version: 2019_10_08_213543) do

  create_table "assignments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "total_marks"
    t.integer "obtained_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "subjects_id"
    t.bigint "users_id"
    t.index ["subjects_id"], name: "index_assignments_on_subjects_id"
    t.index ["users_id"], name: "index_assignments_on_users_id"
  end

  create_table "question_choices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "choice"
    t.boolean "is_right_choice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "questions_id"
    t.index ["questions_id"], name: "index_question_choices_on_questions_id"
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "assignments_id"
    t.index ["assignments_id"], name: "index_questions_on_assignments_id"
  end

  create_table "subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.index ["users_id"], name: "index_subjects_on_users_id"
  end

  create_table "user_question_ans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "is_right"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "questions_id"
    t.bigint "users_id"
    t.bigint "question_choices_id"
    t.index ["question_choices_id"], name: "index_user_question_ans_on_question_choices_id"
    t.index ["questions_id"], name: "index_user_question_ans_on_questions_id"
    t.index ["users_id"], name: "index_user_question_ans_on_users_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignments", "subjects", column: "subjects_id"
  add_foreign_key "assignments", "users", column: "users_id"
  add_foreign_key "question_choices", "questions", column: "questions_id"
  add_foreign_key "questions", "assignments", column: "assignments_id"
  add_foreign_key "user_question_ans", "question_choices", column: "question_choices_id"
  add_foreign_key "user_question_ans", "questions", column: "questions_id"
  add_foreign_key "user_question_ans", "users", column: "users_id"
end
