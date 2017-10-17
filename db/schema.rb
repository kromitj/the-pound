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

ActiveRecord::Schema.define(version: 20171017005855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "animal_breeds", force: :cascade do |t|
    t.integer  "animal_id"
    t.integer  "breed_id"
    t.string   "breed_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.integer  "shelter_id"
    t.integer  "adoption_id"
    t.string   "name"
    t.string   "age_in_months"
    t.string   "animal_type"
    t.string   "breed"
    t.string   "sex"
    t.boolean  "declawed"
    t.string   "size"
    t.integer  "weight"
    t.boolean  "is_spayed_or_nudered"
    t.integer  "adoption_fee"
    t.string   "desc"
    t.string   "picture"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "breeds", force: :cascade do |t|
    t.string   "breed_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "main_contact"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "shelter_admins", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.integer  "user_id"
    t.integer  "shelter_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
