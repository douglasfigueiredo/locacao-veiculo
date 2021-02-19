class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.integer :numero
      t.string :cep
      t.string :estado

      t.timestamps
    end
  end
end
