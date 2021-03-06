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

ActiveRecord::Schema.define(version: 20170406053947) do

  create_table "component_counts", force: :cascade do |t|
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trade_pack_id", null: false
  end

  create_table "components", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.integer  "cost"
  end

  create_table "components_trade_packs", id: false, force: :cascade do |t|
    t.integer "component_id",  null: false
    t.integer "trade_pack_id", null: false
    t.index ["component_id", "trade_pack_id"], name: "component_trade_pack_index"
  end

  create_table "trade_packs_trade_runs", id: false, force: :cascade do |t|
    t.integer "trade_pack_id", null: false
    t.integer "trade_run_id",  null: false
    t.index ["trade_pack_id", "trade_run_id"], name: "trade_pack_run_index"
  end

  create_table "trade_routes_trade_runs", id: false, force: :cascade do |t|
    t.integer "trade_route_id", null: false
    t.integer "trade_run_id",  null: false
    t.index ["trade_route_id", "trade_run_id"], name: "trade_route_run_index"
  end

  create_table "trade_packs", force: :cascade do |t|
    t.string   "name"
    t.integer  "labor_cost"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "creation_cost"
    t.integer  "region"
  end

  create_table "trade_routes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "duration"
    t.string   "from"
    t.string   "to"
  end

  create_table "trade_runs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
