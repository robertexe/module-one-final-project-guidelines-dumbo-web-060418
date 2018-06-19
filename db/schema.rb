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

ActiveRecord::Schema.define(version: 20180619204233) do

  create_table "fifa_world_cups", force: :cascade do |t|
    t.string "name"
    t.string "matches"
    t.string "grand_prize"
    t.string "country_hosting"
  end

  create_table "matches", force: :cascade do |t|
    t.string  "match_date"
    t.string  "team_one"
    t.string  "team_two"
    t.integer "match_score"
    t.string  "match_location"
  end

  create_table "soccer_teams", force: :cascade do |t|
    t.string  "country"
    t.string  "team_colors"
    t.string  "flag"
    t.boolean "active"
  end

end
