class CreateTabelas < ActiveRecord::Migration[7.2]
  def change
    create_table :tabelas do |t|
      t.string :nome_principal
      t.integer :unidade
      t.string :celular
      t.string :email
      t.string :cidade
      t.string :profissao
      t.boolean :zap
      t.string :nome1
      t.string :profissao1
      t.string :parentesco
      t.string :nome2
      t.string :profissao2
      t.string :parentesco2
      t.string :nome3
      t.string :profissao3
      t.string :parentesco3
      t.string :nome4
      t.string :profissao4
      t.string :parentesco4
      t.string :nome5
      t.string :profissao5
      t.string :parentesco5
      t.integer :ano_compra
      t.string :frequencia
      t.boolean :locacao
      t.string :sugestao1
      t.string :sugestao2
      t.string :sugestao3
      t.string :sugestao4
      t.string :sugestao5
      t.string :comentario

      t.timestamps
    end
  end
end
