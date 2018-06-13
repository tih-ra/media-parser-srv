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

ActiveRecord::Schema.define(version: 20180608121436) do

  create_table "media_objects", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "media_pull_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["media_pull_id"], name: "index_media_objects_on_media_pull_id"
  end

  create_table "media_pulls", force: :cascade do |t|
    t.string "long_cid"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_tags", force: :cascade do |t|
    t.string "name"
    t.string "regexp_rule"
    t.integer "media_object_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "xpath_rule"
    t.string "replace_rule"
    t.index ["media_object_id"], name: "index_media_tags_on_media_object_id"
  end

end
