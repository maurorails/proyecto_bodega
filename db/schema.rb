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

ActiveRecord::Schema.define(version: 20151111002510) do

  create_table "bodegas", force: true do |t|
    t.integer  "columna"
    t.integer  "fila"
    t.integer  "producto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bodegas", ["producto_id"], name: "index_bodegas_on_producto_id"

  create_table "productos", force: true do |t|
    t.string   "descripcion"
    t.integer  "cantidad"
    t.date     "fechaingreso"
    t.string   "sku"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "retiros", force: true do |t|
    t.date     "horaretiro"
    t.integer  "bodega_id"
    t.integer  "vendedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "retiros", ["bodega_id"], name: "index_retiros_on_bodega_id"
  add_index "retiros", ["vendedor_id"], name: "index_retiros_on_vendedor_id"

  create_table "usuarios", force: true do |t|
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

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "vendedors", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "codigovendedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
