# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091114135907) do

  create_table "appointments", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "phone"
    t.string   "alternate_phone"
    t.string   "pet_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
    t.string   "city"
    t.string   "postal_code"
    t.string   "county"
    t.string   "cat_or_dog"
    t.string   "breed"
    t.string   "color"
    t.string   "gender"
    t.string   "hair_length"
    t.boolean  "pet_goes_outside"
    t.boolean  "surgeries"
    t.text     "surgeries_explanation"
    t.boolean  "health_concerns"
    t.text     "health_concerns_explanation"
    t.boolean  "medications"
    t.text     "medications_explanation"
    t.string   "age"
    t.string   "owned_for"
    t.boolean  "vaccinated"
    t.boolean  "visited_vet"
    t.string   "vet_name"
    t.boolean  "pregnant"
    t.boolean  "in_heat"
    t.string   "in_heat_when"
    t.string   "had_litter_when"
    t.boolean  "nursing"
    t.integer  "testicle_count"
    t.string   "weight"
    t.string   "date_of_birth"
    t.boolean  "want_chip_implant"
    t.boolean  "want_rabies_vaccination"
  end

end
