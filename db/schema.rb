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

ActiveRecord::Schema.define(version: 20170707055843) do

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "days_id"
    t.integer  "schedules_id"
    t.string   "descripcion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["days_id"], name: "index_availabilities_on_days_id"
    t.index ["schedules_id"], name: "index_availabilities_on_schedules_id"
  end

  create_table "category_steps", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "icon"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "communes", force: :cascade do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["province_id"], name: "index_communes_on_province_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "abbreviation"
    t.string   "name"
    t.string   "flag_image"
    t.integer  "country_category_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["country_category_id"], name: "index_countries_on_country_category_id"
  end

  create_table "country_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "percentage_profile"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "current_situation_countries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "current_statuses", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "description"
    t.decimal  "percentage_profile"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "distances", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "kilometers"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "economic_activities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "family_bonds", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "description"
    t.decimal  "percentage_profile"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "abbreviation_1"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "level_studies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "country_categories_id"
    t.integer  "situations_arrivals_countries_id"
    t.integer  "current_statuses_id"
    t.integer  "family_bonds_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["country_categories_id"], name: "index_profiles_on_country_categories_id"
    t.index ["current_statuses_id"], name: "index_profiles_on_current_statuses_id"
    t.index ["family_bonds_id"], name: "index_profiles_on_family_bonds_id"
    t.index ["situations_arrivals_countries_id"], name: "index_profiles_on_situations_arrivals_countries_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.integer  "num_communes"
    t.integer  "region_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["region_id"], name: "index_provinces_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.string   "roman_number"
    t.integer  "num_provinces"
    t.integer  "num_communes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sentimental_situations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sexual_identities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "situations_arrivals_countries", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "description"
    t.decimal  "percentage_profile"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "position"
    t.integer  "category_step_id"
    t.integer  "type_step_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["category_step_id"], name: "index_steps_on_category_step_id"
    t.index ["type_step_id"], name: "index_steps_on_type_step_id"
  end

  create_table "studies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "theme_interests", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "type_steps", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_availabilities", force: :cascade do |t|
    t.integer  "abilities_id"
    t.integer  "users_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["abilities_id"], name: "index_user_availabilities_on_abilities_id"
    t.index ["users_id"], name: "index_user_availabilities_on_users_id"
  end

  create_table "user_steps", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["steps_id"], name: "index_user_steps_on_steps_id"
    t.index ["users_id"], name: "index_user_steps_on_users_id"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "you_want_to_dos", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
