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

ActiveRecord::Schema.define(version: 20200318121922) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",         null: false
    t.string   "postal_code",     null: false
    t.integer  "prefecture_code", null: false
    t.string   "city",            null: false
    t.string   "block",           null: false
    t.string   "building"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "tests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "body",       limit: 65535
    t.string   "image"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nickname",                                          null: false
    t.string   "familyname",                                        null: false
    t.string   "firstname",                                         null: false
    t.string   "familyname_kana",                                   null: false
    t.string   "firstname_kana",                                    null: false
    t.integer  "phonenumber",                                       null: false
    t.date     "birth_date",                                        null: false
    t.text     "detail",                 limit: 65535
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "users"
end
