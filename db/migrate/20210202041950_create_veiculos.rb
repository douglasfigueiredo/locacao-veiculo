class CreateVeiculos < ActiveRecord::Migration[6.1]
  def change
    create_table :veiculos do |t|
      t.references :marca, null: false, foreign_key: true
      t.string :nome
      t.string :cor
      t.string :qnt_lugares
      t.string :placa
      t.decimal :valor

      t.timestamps
    end
  end
end
