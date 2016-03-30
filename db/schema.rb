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

ActiveRecord::Schema.define(version: 20160212231355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atmospheres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clays", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cone"
    t.date     "datetested"
    t.boolean  "casting"
    t.decimal  "specificgravity"
    t.decimal  "dryshrink"
    t.decimal  "bisque"
    t.decimal  "glazeshrink"
    t.decimal  "woa"
    t.integer  "atmosphere_id"
    t.decimal  "k2o"
    t.decimal  "na2o"
    t.decimal  "li2o"
    t.decimal  "cao"
    t.decimal  "mgo"
    t.decimal  "bao"
    t.decimal  "sro"
    t.decimal  "zno"
    t.decimal  "pbo"
    t.decimal  "feo"
    t.decimal  "cuo"
    t.decimal  "coo"
    t.decimal  "nio"
    t.decimal  "al2o3"
    t.decimal  "b2o3"
    t.decimal  "fe2o3"
    t.decimal  "p2o5"
    t.decimal  "sb2o3"
    t.decimal  "cr2o3"
    t.decimal  "v2o5"
    t.decimal  "sio2"
    t.decimal  "tio2"
    t.decimal  "zro2"
    t.decimal  "sno2"
    t.decimal  "mno2"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "glazes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cone"
    t.date     "datetested"
    t.integer  "opacity_id"
    t.integer  "surface_id"
    t.integer  "atmosphere_id"
    t.decimal  "k2o",             precision: 4, scale: 3
    t.decimal  "na2o",            precision: 4, scale: 3
    t.decimal  "li2o",            precision: 4, scale: 3
    t.decimal  "cao",             precision: 4, scale: 3
    t.decimal  "mgo",             precision: 4, scale: 3
    t.decimal  "bao",             precision: 4, scale: 3
    t.decimal  "sro",             precision: 4, scale: 3
    t.decimal  "zno",             precision: 4, scale: 3
    t.decimal  "pbo",             precision: 4, scale: 3
    t.decimal  "feo",             precision: 4, scale: 3
    t.decimal  "cuo",             precision: 4, scale: 3
    t.decimal  "coo",             precision: 4, scale: 3
    t.decimal  "nio",             precision: 4, scale: 3
    t.decimal  "al2o3",           precision: 4, scale: 3
    t.decimal  "b2o3",            precision: 4, scale: 3
    t.decimal  "fe2o3",           precision: 4, scale: 3
    t.decimal  "p2o5",            precision: 4, scale: 3
    t.decimal  "sb2o3",           precision: 4, scale: 3
    t.decimal  "cr2o3",           precision: 4, scale: 3
    t.decimal  "v2o5",            precision: 4, scale: 3
    t.decimal  "sio2",            precision: 4, scale: 3
    t.decimal  "tio2",            precision: 4, scale: 3
    t.decimal  "zro2",            precision: 4, scale: 3
    t.decimal  "sno2",            precision: 4, scale: 3
    t.decimal  "mno2",            precision: 4, scale: 3
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.decimal  "specificgravity", precision: 3, scale: 2
    t.integer  "clay_id"
    t.integer  "user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer  "glaze_id"
    t.integer  "material_id"
    t.decimal  "amt",         precision: 8, scale: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "clay_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.decimal  "eweight",    precision: 5, scale: 1
    t.decimal  "ppg",        precision: 4, scale: 3
    t.boolean  "colorant"
    t.decimal  "k2o",        precision: 4, scale: 3
    t.decimal  "na2o",       precision: 4, scale: 3
    t.decimal  "li2o",       precision: 4, scale: 3
    t.decimal  "cao",        precision: 4, scale: 3
    t.decimal  "mgo",        precision: 4, scale: 3
    t.decimal  "bao",        precision: 4, scale: 3
    t.decimal  "sro",        precision: 4, scale: 3
    t.decimal  "zno",        precision: 4, scale: 3
    t.decimal  "pbo",        precision: 4, scale: 3
    t.decimal  "feo",        precision: 4, scale: 3
    t.decimal  "cuo",        precision: 4, scale: 3
    t.decimal  "coo",        precision: 4, scale: 3
    t.decimal  "nio",        precision: 4, scale: 3
    t.decimal  "al2o3",      precision: 4, scale: 3
    t.decimal  "b2o3",       precision: 4, scale: 3
    t.decimal  "fe2o3",      precision: 4, scale: 3
    t.decimal  "p2o5",       precision: 4, scale: 3
    t.decimal  "sb2o3",      precision: 4, scale: 3
    t.decimal  "cr2o3",      precision: 4, scale: 3
    t.decimal  "v2o5",       precision: 4, scale: 3
    t.decimal  "sio2",       precision: 4, scale: 3
    t.decimal  "tio2",       precision: 4, scale: 3
    t.decimal  "zro2",       precision: 4, scale: 3
    t.decimal  "sno2",       precision: 4, scale: 3
    t.decimal  "mno2",       precision: 4, scale: 3
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "opacities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surfaces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.boolean  "admin"
  end

end
