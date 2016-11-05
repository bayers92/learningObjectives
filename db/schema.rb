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

ActiveRecord::Schema.define(version: 20161105222253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commots", force: :cascade do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "question"
    t.text     "body"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "image_uno_file_name"
    t.string   "image_uno_content_type"
    t.integer  "image_uno_file_size"
    t.datetime "image_uno_updated_at"
    t.string   "image_dos_file_name"
    t.string   "image_dos_content_type"
    t.integer  "image_dos_file_size"
    t.datetime "image_dos_updated_at"
    t.string   "image_tres_file_name"
    t.string   "image_tres_content_type"
    t.integer  "image_tres_file_size"
    t.datetime "image_tres_updated_at"
    t.string   "image_quatro_file_name"
    t.string   "image_quatro_content_type"
    t.integer  "image_quatro_file_size"
    t.datetime "image_quatro_updated_at"
    t.integer  "block"
    t.string   "label"
  end

end
