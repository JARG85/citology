# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_10_07_224036) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cita", force: :cascade do |t|
    t.string "fecha"
    t.bigint "paciente_id", null: false
    t.bigint "medico_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medico_id"], name: "index_cita_on_medico_id"
    t.index ["paciente_id"], name: "index_cita_on_paciente_id"
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nombre"
    t.string "especialidad"
    t.string "num_licencia"
    t.string "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "numero_identidad", null: false
    t.integer "edad"
    t.string "direccion"
    t.string "telefono"
    t.text "historia_clinica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_pacientes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pacientes_on_reset_password_token", unique: true
  end

  create_table "recursos", force: :cascade do |t|
    t.string "tipo"
    t.boolean "disponibilidad"
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cita", "medicos"
  add_foreign_key "cita", "pacientes"
end
