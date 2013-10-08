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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130926032136) do

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.string   "language"
    t.string   "physician"
    t.boolean  "registered",         :default => false
    t.boolean  "copay_paid",         :default => false
    t.boolean  "insurance_verified", :default => false
    t.datetime "scheduled_time"
    t.datetime "arrival_time"
    t.boolean  "arrived",            :default => false
    t.float    "arrival_status"
    t.boolean  "exit",               :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

end
