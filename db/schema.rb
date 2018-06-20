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

ActiveRecord::Schema.define(version: 20180620143830) do


  create_table "fifas", force: :cascade do |t|
    t.integer "matches_id"
  end

  create_table "fifas", force: :cascade do |t|
    t.integer "matches_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "match_name_id"
    t.string  "match_name"
    t.integer "team_one_id"
    t.string  "team_one_name"
    t.integer "team_two_id"
    t.string  "team_two_name"
    t.string  "match_location"
    t.string  "match_winner"
  end

  create_table "soccer_teams", force: :cascade do |t|

    t.string  "country"
    t.string  "team_colors"
    t.string  "flag"
    t.boolean "active"
  end

end
