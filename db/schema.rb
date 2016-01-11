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

ActiveRecord::Schema.define(version: 20160111150506) do

  create_table "contracts", force: :cascade do |t|
    t.string   "client"
    t.string   "opportunity_link"
    t.date     "contract_start"
    t.date     "contract_end"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "statement_of_works", force: :cascade do |t|
    t.integer  "contract_id"
    t.text     "description"
    t.boolean  "product1"
    t.boolean  "product2"
    t.boolean  "product3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "statement_of_works", ["contract_id"], name: "index_statement_of_works_on_contract_id"

end
