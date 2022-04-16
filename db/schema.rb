# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_16_062402) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.text "street_address"
    t.text "property_type"
    t.integer "user_id"
    t.integer "postcode"
    t.text "state"
    t.text "country"
    t.integer "lot_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "suburb"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.integer "carspaces"
    t.text "image"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "tenancies", force: :cascade do |t|
    t.integer "start_date"
    t.integer "end_date"
    t.text "contractual_basis"
    t.boolean "has_pets"
    t.integer "bond_amount"
    t.text "pays_water"
    t.text "pays_gas"
    t.text "pays_electricity"
    t.integer "weekly_rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email_address"
    t.integer "phone_number"
    t.integer "property_id"
    t.integer "tenancy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
