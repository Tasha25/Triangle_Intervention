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

ActiveRecord::Schema.define(:version => 20131024172701) do

  create_table "connectors", :force => true do |t|
    t.string  "organization_name"
    t.text    "organization_mission"
    t.text    "street_address"
    t.string  "city"
    t.string  "state"
    t.integer "zip_code"
    t.string  "contact_person_first_name"
    t.string  "contact_person_last_name"
    t.binary  "contact_person_email"
    t.binary  "contact_number"
    t.binary  "organization_number"
    t.binary  "organization_website"
    t.integer "incident_id"
  end

  create_table "incidents", :force => true do |t|
    t.text     "comment"
    t.integer  "student_id"
    t.integer  "infraction_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "infractions", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "osis"
    t.text     "address"
    t.date     "date_of_birth"
    t.string   "guardians_name"
    t.binary   "phone_number"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           :default => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
