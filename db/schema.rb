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

ActiveRecord::Schema[7.2].define(version: 2025_03_16_134939) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tabelas", force: :cascade do |t|
    t.string "nome_principal"
    t.integer "unidade"
    t.string "celular"
    t.string "email"
    t.string "cidade"
    t.string "profissao"
    t.boolean "zap"
    t.string "nome1"
    t.string "profissao1"
    t.string "parentesco"
    t.string "nome2"
    t.string "profissao2"
    t.string "parentesco2"
    t.string "nome3"
    t.string "profissao3"
    t.string "parentesco3"
    t.string "nome4"
    t.string "profissao4"
    t.string "parentesco4"
    t.string "nome5"
    t.string "profissao5"
    t.string "parentesco5"
    t.integer "ano_compra"
    t.string "frequencia"
    t.boolean "locacao"
    t.string "sugestao1"
    t.string "sugestao2"
    t.string "sugestao3"
    t.string "sugestao4"
    t.string "sugestao5"
    t.string "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
