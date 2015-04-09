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

ActiveRecord::Schema.define(:version => 20141023201455) do

  create_table "banking_financials", :force => true do |t|
    t.integer  "social_Security"
    t.datetime "date_Of_Birth"
    t.string   "account_type"
    t.integer  "account_No"
    t.string   "account_Holders"
    t.string   "beneficiary"
    t.text     "institution_Information"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "phone_no"
    t.string   "date_of_birth"
    t.string   "blood_type"
    t.string   "allergies_info"
    t.string   "name_healthcare_proxy"
    t.string   "organization"
    t.text     "details_DNR"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "insurances", :force => true do |t|
    t.string   "account_Type"
    t.integer  "account_No"
    t.string   "account_Holders"
    t.string   "beneficiary"
    t.text     "institution_Information"
    t.text     "document"
    t.string   "insurance_Card"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "legal_documents", :force => true do |t|
    t.string   "do_Not_Resuscitate"
    t.string   "healthcare_Directive"
    t.string   "power_of_Attorney"
    t.text     "will"
    t.string   "trust"
    t.text     "wishes"
    t.text     "letter_of_Authorization"
    t.text     "pension_Papers"
    t.string   "location_of_Original"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "loans_credit_cards", :force => true do |t|
    t.string   "account_Type"
    t.integer  "account_Number"
    t.string   "institution_Information"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "medical_histories", :force => true do |t|
    t.datetime "date"
    t.text     "updater"
    t.text     "diagnosis_procedure"
    t.datetime "date_Of_Onset"
    t.string   "physician"
    t.text     "comments"
    t.text     "documents"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "medications", :force => true do |t|
    t.string   "prescription"
    t.string   "currently_Taking"
    t.string   "name_Of_Medication"
    t.string   "dosage"
    t.string   "frequency"
    t.string   "prescrbing_Physician"
    t.string   "special_Instruvtions"
    t.string   "pharmacy"
    t.string   "medication_Photo"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "personal_properties", :force => true do |t|
    t.string   "property_Nickname"
    t.string   "address_Line1"
    t.string   "address_Line2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.text     "notes"
    t.string   "vehicles"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "notes_Collectibles_Valuable"
    t.text     "stem_Description"
    t.string   "item_Location"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
