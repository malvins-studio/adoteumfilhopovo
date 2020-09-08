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

ActiveRecord::Schema.define(version: 2020_09_08_143032) do

  create_table "pnas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "country_code_2"
    t.string "city"
    t.integer "people_id3"
    t.string "peop_name_in_country"
    t.integer "people_id1"
    t.string "affinity_bloc"
    t.integer "people_id2"
    t.string "people_cluster"
    t.string "primary_relig_in_people_cluster"
    t.string "country_code_3"
    t.string "primary_language_name"
    t.integer "population"
    t.boolean "window_10_40"
    t.string "location_in_country"
    t.string "primary_religion"
    t.integer "percent_evangelical"
    t.integer "percent_adherents"
    t.boolean "least_reached"
    t.integer "joshua_project_scale"
    t.integer "bible_status"
    t.boolean "has_jesus_movie_translated"
    t.boolean "audio_recordings"
    t.string "new_testament_online_code"
    t.boolean "indigenous_code"
    t.string "latitude"
    t.string "longitude"
    t.string "photo_url"
    t.string "map_url"
    t.string "flag_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
