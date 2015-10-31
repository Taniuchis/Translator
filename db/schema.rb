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

ActiveRecord::Schema.define(version: 20151031005909) do

  create_table "english_words", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spanish_words", force: :cascade do |t|
    t.string   "name"
    t.string   "kind"
    t.integer  "english_word_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "spanish_words", ["english_word_id"], name: "index_spanish_words_on_english_word_id"

  create_table "tenses", force: :cascade do |t|
    t.string   "i"
    t.string   "you"
    t.string   "he"
    t.string   "she"
    t.string   "it"
    t.string   "they"
    t.string   "we"
    t.string   "you_p"
    t.integer  "word_id"
    t.string   "word_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tenses", ["word_type", "word_id"], name: "index_tenses_on_word_type_and_word_id"

end
