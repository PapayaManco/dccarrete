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

ActiveRecord::Schema.define(version: 2020_11_20_161038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carretes", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.integer "max_asistentes"
    t.integer "monto_minimo"
    t.boolean "abierto", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: true
    t.integer "comuna_id"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_carretes_on_user_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "comuna"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
    t.bigint "servicio_id"
    t.index ["servicio_id"], name: "index_comunas_on_servicio_id"
  end

  create_table "interes", force: :cascade do |t|
    t.integer "carrete_id"
    t.integer "user_id"
    t.integer "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.integer "user_id"
    t.integer "servicio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.bigint "user_id"
    t.string "nombre"
    t.string "descripcion"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: false
    t.index ["user_id"], name: "index_servicios_on_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "carrete_id"
    t.string "codigo", default: -> { "md5((random())::text)" }, null: false
    t.boolean "visto", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.boolean "admin"
    t.integer "role"
    t.integer "comuna_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "carretes", "users"
end
