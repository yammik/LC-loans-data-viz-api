ActiveRecord::Schema.define(version: 2019_01_08_061521) do

  create_table "grades", force: :cascade do |t|
    t.string "letter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.integer "loan_amnt"
    t.integer "grade_id"
    t.integer "purpose_id"
    t.integer "state_id"
    t.string "home_owner"
    t.integer "annual_inc"
    t.string "issue_d"
    t.string "desc"
    t.string "title"
    t.string "earliest_cr_line"
    t.integer "open_acc"
    t.integer "pub_rec"
    t.string "last_credit_pull_d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_loans_on_grade_id"
    t.index ["purpose_id"], name: "index_loans_on_purpose_id"
    t.index ["state_id"], name: "index_loans_on_state_id"
  end

  create_table "purposes", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "abbr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
