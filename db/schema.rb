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

ActiveRecord::Schema.define(version: 20170319225423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "champions", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_player_team_mappings", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "pTM_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.text     "vg_id"
    t.datetime "date"
    t.integer  "duration"
    t.text     "mode"
    t.text     "end_reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_team_mappings", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "champion_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "players", force: :cascade do |t|
    t.text     "vg_id"
    t.text     "name"
    t.integer  "level"
    t.integer  "wins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.text     "vg_id"
    t.text     "match_id"
    t.boolean  "winner"
    t.boolean  "left_side"
    t.integer  "aces"
    t.integer  "gold"
    t.integer  "hero_kills"
    t.integer  "krakens"
    t.integer  "turret_kills"
    t.string   "turrets_remaining"
    t.string   "integer"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
