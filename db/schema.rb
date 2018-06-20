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

ActiveRecord::Schema.define(version: 20180620201308) do

  create_table "game_controllers", force: :cascade do |t|
    t.integer "match_id"
    t.integer "soccer_teams_id"
    t.integer "fifas_id"
    t.integer "user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "team_one_id"
    t.integer "team_two_id"
  end

  create_table "soccer_teams", force: :cascade do |t|
    t.string  "country"
    t.string  "team_colors"
    t.string  "flag"
    t.boolean "active"
  end

end
