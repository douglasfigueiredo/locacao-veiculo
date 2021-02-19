class AddUsuarioToReserva < ActiveRecord::Migration[6.1]
  def change
    add_reference :reservas, :usuario, null: false, foreign_key: true
  end
end
