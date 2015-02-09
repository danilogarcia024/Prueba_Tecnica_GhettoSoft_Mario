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

ActiveRecord::Schema.define(version: 20150128040045) do

  create_table "_user_permissions_old_20150127", force: true do |t|
    t.integer  "user_id"
    t.integer  "permision_id"
    t.integer  "users_id"
    t.integer  "permissions_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_user_permissions_old_20150127_1", force: true do |t|
    t.integer  "user_id"
    t.integer  "permision_id"
    t.integer  "users_id"
    t.integer  "permissions_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.text     "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_permissions", force: true do |t|
    t.integer  "user_id"
    t.integer  "permision_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.text     "Nombre"
    t.text     "Apellido"
    t.integer  "Cedula"
    t.text     "Email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
