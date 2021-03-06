# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_09_213655) do

  create_table "leaderboards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "score_id"
    t.integer "game_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["score_id"], name: "index_leaderboards_on_score_id"
    t.index ["user_id"], name: "index_leaderboards_on_user_id"
  end

  create_table "scores", force: :cascade do |t|
    t.string "category"
    t.string "difficulty"
    t.string "type"
    t.integer "length"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "leaderboards", "scores"
  add_foreign_key "leaderboards", "users"
end
