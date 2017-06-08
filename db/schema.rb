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

ActiveRecord::Schema.define(version: 20170608113248) do

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.integer  "provinces_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["provinces_id"], name: "index_communes_on_provinces_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "abbreviation"
    t.string   "name"
    t.string   "flag_image"
    t.integer  "country_categories_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["country_categories_id"], name: "index_countries_on_country_categories_id"
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
    t.integer  "regions_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["regions_id"], name: "index_provinces_on_regions_id"
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
    t.string   "description"
    t.decimal  "percentage_profile"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "position"
    t.integer  "category_steps_id"
    t.integer  "type_steps_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["category_steps_id"], name: "index_steps_on_category_steps_id"
    t.index ["type_steps_id"], name: "index_steps_on_type_steps_id"
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
    t.string   "nickname"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "first_surname"
    t.string   "second_surname"
    t.string   "email"
    t.integer  "status"
    t.string   "password"
    t.integer  "countries_id"
    t.integer  "communes_id"
    t.integer  "genders_id"
    t.integer  "sexual_identities_id"
    t.integer  "situations_arrivals_countries_id"
    t.integer  "year_country"
    t.integer  "month_country"
    t.integer  "current_situation_countries_id"
    t.integer  "year_current_situation_countries"
    t.integer  "month_current_situation_countries"
    t.integer  "current_statuses"
    t.integer  "you_want_to_dos_id"
    t.integer  "sentimental_situations_id"
    t.boolean  "person_waiting_for_a_child"
    t.integer  "family_bonds_id"
    t.integer  "profiles_id"
    t.date     "birthdate"
    t.string   "rut"
    t.string   "street_number"
    t.string   "latitude_y"
    t.string   "length_x"
    t.integer  "distances_id"
    t.integer  "level_studies_id"
    t.date     "date_work_start"
    t.date     "date_work_end"
    t.boolean  "date_work_end_undefined"
    t.integer  "studies_id"
    t.string   "phone"
    t.string   "description_latest_works"
    t.string   "description_tasks_performed"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["communes_id"], name: "index_users_on_communes_id"
    t.index ["countries_id"], name: "index_users_on_countries_id"
    t.index ["current_situation_countries_id"], name: "index_users_on_current_situation_countries_id"
    t.index ["distances_id"], name: "index_users_on_distances_id"
    t.index ["family_bonds_id"], name: "index_users_on_family_bonds_id"
    t.index ["genders_id"], name: "index_users_on_genders_id"
    t.index ["level_studies_id"], name: "index_users_on_level_studies_id"
    t.index ["profiles_id"], name: "index_users_on_profiles_id"
    t.index ["sentimental_situations_id"], name: "index_users_on_sentimental_situations_id"
    t.index ["sexual_identities_id"], name: "index_users_on_sexual_identities_id"
    t.index ["situations_arrivals_countries_id"], name: "index_users_on_situations_arrivals_countries_id"
    t.index ["studies_id"], name: "index_users_on_studies_id"
    t.index ["you_want_to_dos_id"], name: "index_users_on_you_want_to_dos_id"
  end

  create_table "you_want_to_dos", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
