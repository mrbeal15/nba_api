# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160817020817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.float    "season_2016_17"
    t.float    "season_2017_18"
    t.float    "season_2018_19"
    t.string   "signed_using"
    t.string   "guaranteed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "contracts_players", id: false, force: :cascade do |t|
    t.integer "player_id",   null: false
    t.integer "contract_id", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer  "rank"
    t.string   "name"
    t.string   "position"
    t.integer  "age"
    t.string   "team"
    t.integer  "games"
    t.integer  "games_started"
    t.integer  "minutes_played"
    t.integer  "field_goals"
    t.integer  "field_goals_attempted"
    t.float    "field_goal_percentage"
    t.integer  "three_pointers"
    t.integer  "three_pointers_attempted"
    t.float    "three_point_percentage"
    t.integer  "two_pointers"
    t.integer  "two_pointers_attempted"
    t.integer  "two_point_percentage"
    t.float    "effective_field_goal_percentage"
    t.integer  "free_throws_made"
    t.integer  "free_throws_attempted"
    t.float    "free_throw_percentage"
    t.integer  "offensive_rebounds"
    t.integer  "defensive_rebounds"
    t.integer  "total_rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.integer  "personal_fouls"
    t.integer  "points"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "rank"
    t.string   "team"
    t.integer  "games"
    t.integer  "minutes_played"
    t.integer  "field_goals"
    t.integer  "field_goals_attempted"
    t.float    "field_goals_percentage"
    t.integer  "three_pointers"
    t.integer  "three_points_attempted"
    t.float    "three_points_percentage"
    t.integer  "two_pointers"
    t.integer  "two_points_attempted"
    t.float    "two_points_percentage"
    t.integer  "free_throws"
    t.integer  "free_throws_attempted"
    t.float    "free_throw_percentage"
    t.integer  "offensive_rebounds"
    t.integer  "defensive_rebounds"
    t.integer  "total_rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.integer  "personal_fouls"
    t.integer  "total_points"
    t.float    "points_per_game"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
