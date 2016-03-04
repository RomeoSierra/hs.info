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

ActiveRecord::Schema.define(version: 20160304055529) do

  create_table "cards", force: :cascade do |t|
    t.string  "set_sym"
    t.string  "card_name"
    t.integer "align"
    t.integer "rarity"
    t.string  "set"
    t.integer "card_type"
    t.string  "subtype"
    t.integer "cost"
    t.integer "power"
    t.integer "toughness"
    t.string  "card_text"
    t.string  "flavor_text"
    t.string  "artist"
    t.boolean "independent"
    t.string  "created_cards"
    t.string  "trivia"
    t.boolean "wildlegal"
    t.boolean "krakenlegal"
  end

end
