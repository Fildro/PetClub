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

ActiveRecord::Schema.define(version: 20161128162601) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nombrecli"
    t.string   "appcli"
    t.string   "dnicli"
    t.string   "direccioncli"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "detallefacturas", force: :cascade do |t|
    t.integer  "factura_id"
    t.integer  "mascot_id"
    t.integer  "servicio_id"
    t.integer  "producto_id"
    t.string   "cantidad"
    t.decimal  "prevenp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "cliente_id"
    t.integer  "medico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascots", force: :cascade do |t|
    t.string   "nombrema"
    t.string   "razama"
    t.string   "colorma"
    t.date     "fechanacma"
    t.string   "sexoma"
    t.decimal  "pesoma"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string   "nombrem"
    t.string   "appm"
    t.string   "dnim"
    t.string   "especialidadm"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombrep"
    t.string   "categoriap"
    t.string   "unidadmedidap"
    t.string   "stockp"
    t.decimal  "precostop"
    t.decimal  "prevenp"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "tipose"
    t.string   "descripcionse"
    t.decimal  "preciose"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
