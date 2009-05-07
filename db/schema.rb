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

ActiveRecord::Schema.define(:version => 21) do

  create_table "armies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "army_lists", :force => true do |t|
    t.string   "name"
    t.integer  "army_id"
    t.string   "description"
    t.integer  "maxpointvalue"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combat_group_units", :force => true do |t|
    t.integer  "unit_option_id"
    t.integer  "combat_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combat_groups", :force => true do |t|
    t.integer  "army_list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_option_weapons", :force => true do |t|
    t.integer  "weapon_id"
    t.integer  "unit_option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_options", :force => true do |t|
    t.string   "name"
    t.string   "bsweapons"
    t.string   "ccweapons"
    t.float    "swc"
    t.integer  "cost"
    t.integer  "unit_id"
    t.boolean  "lt",                    :default => false
    t.float    "bonusswc",              :default => 0.0
    t.boolean  "isaddon",               :default => false
    t.integer  "parent_unit_option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_types", :force => true do |t|
    t.string   "name"
    t.string   "abr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.integer  "mov1"
    t.integer  "mov2"
    t.integer  "cc"
    t.integer  "bs"
    t.integer  "ph"
    t.integer  "wip"
    t.integer  "arm"
    t.integer  "bts"
    t.integer  "w"
    t.integer  "str"
    t.float    "swc"
    t.integer  "cost"
    t.integer  "unit_type_id"
    t.integer  "avail"
    t.boolean  "regular"
    t.integer  "impetuous"
    t.boolean  "cube"
    t.string   "skills"
    t.string   "name"
    t.integer  "army_id"
    t.boolean  "isaddon",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "weapons", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "shortrange"
    t.integer  "shortrangemod"
    t.integer  "mediumrange"
    t.integer  "mediumrangemod"
    t.integer  "longrange"
    t.integer  "longrangemod"
    t.integer  "maxrange"
    t.integer  "maxrangemod"
    t.string   "damage",         :limit => 10
    t.string   "b",              :limit => 10
    t.string   "ammo",           :limit => 20
    t.string   "template",       :limit => 20
    t.boolean  "emvul"
    t.boolean  "cc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
