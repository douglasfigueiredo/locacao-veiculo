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

ActiveRecord::Schema.define(version: 2021_02_19_171814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradors", force: :cascade do |t|
    t.string "nome"
    t.string "login"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "cep"
    t.string "estado"
    t.string "rua"
    t.string "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.bigint "veiculo_id", null: false
    t.integer "tempo_de_espera"
    t.decimal "valor_alugado"
    t.datetime "reservado_de"
    t.datetime "reservado_ate"
    t.boolean "pagamento_no_destino"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "status"
    t.bigint "usuario_id", null: false
    t.index ["usuario_id"], name: "index_reservas_on_usuario_id"
    t.index ["veiculo_id"], name: "index_reservas_on_veiculo_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "endereco"
    t.integer "numero"
    t.string "cep"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "login"
    t.string "senha"
  end

  create_table "veiculos", force: :cascade do |t|
    t.bigint "marca_id", null: false
    t.string "nome"
    t.string "cor"
    t.string "qnt_lugares"
    t.string "placa"
    t.decimal "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["marca_id"], name: "index_veiculos_on_marca_id"
  end

  add_foreign_key "reservas", "usuarios"
  add_foreign_key "reservas", "veiculos"
  add_foreign_key "veiculos", "marcas"
end
