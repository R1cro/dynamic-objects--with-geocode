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

ActiveRecord::Schema.define(version: 20170509162641) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dynamic_object_fields", force: :cascade do |t|
    t.string   "name"
    t.string   "field_type"
    t.boolean  "required"
    t.integer  "dynamic_object_type_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["dynamic_object_type_id"], name: "index_dynamic_object_fields_on_dynamic_object_type_id", using: :btree
  end

  create_table "dynamic_object_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dynamic_objects", force: :cascade do |t|
    t.string   "name"
    t.integer  "location_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "dynamic_object_type_id"
    t.text     "properties"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
