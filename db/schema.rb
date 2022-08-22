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

ActiveRecord::Schema[7.0].define(version: 2022_08_22_093654) do
  create_table "relationships", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
  end

  create_table "relationships_users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "relationship_id"
    t.integer "user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "visa_detail_id"
    t.string "family_name"
    t.text "given_names"
    t.string "gender"
    t.string "date_of_birth"
    t.integer "passport_number"
    t.string "country_of_passport"
    t.string "passport_nationality"
    t.string "date_of_issue"
    t.string "date_of_expired"
    t.text "issueing_authority"
  end

  create_table "visa_details", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "used_pen"
    t.boolean "outside_country"
    t.boolean "inside_country"
    t.string "visiting_from"
    t.string "visiting_to"
    t.boolean "is_more_occasion"
    t.text "types_of_occasion"
    t.string "date_of_extend"
    t.text "detailed_description"
    t.string "image"
    t.string "name_of_city"
    t.string "name_of_state"
    t.string "name_of_country"
    t.integer "stay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
