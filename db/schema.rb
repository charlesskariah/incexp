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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150926110800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expense_categories", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "source"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "expense_categories", ["user_id"], name: "index_expense_categories_on_user_id", using: :btree

  create_table "expenses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "expense_category_id"
    t.datetime "date"
    t.float    "amount"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "expenses", ["expense_category_id"], name: "index_expenses_on_expense_category_id", using: :btree
  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id", using: :btree

  create_table "income_categories", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "source"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "income_categories", ["user_id"], name: "index_income_categories_on_user_id", using: :btree

  create_table "incomes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "income_category_id"
    t.datetime "date"
    t.float    "amount"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "incomes", ["income_category_id"], name: "index_incomes_on_income_category_id", using: :btree
  add_index "incomes", ["user_id"], name: "index_incomes_on_user_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.integer  "trans_id"
    t.string   "trans_type"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "date"
  end

  add_index "transactions", ["trans_type", "trans_id"], name: "index_transactions_on_trans_type_and_trans_id", using: :btree
  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
