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

ActiveRecord::Schema.define(:version => 20100613143207) do

  create_table "farmers", :force => true do |t|
    t.string   "name"
    t.integer  "washing_station_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "farms", :force => true do |t|
    t.string   "name"
    t.boolean  "organic"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "altitude"
    t.integer  "farmer_id"
    t.integer  "organic_certifier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organic_certifiers", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organic_certifiers", ["code"], :name => "index_organic_certifiers_on_code", :unique => true

  create_table "washing_stations", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "washing_stations", ["code"], :name => "index_washing_stations_on_code", :unique => true

end
