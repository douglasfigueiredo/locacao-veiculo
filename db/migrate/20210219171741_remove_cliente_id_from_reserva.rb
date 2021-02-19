class RemoveClienteIdFromReserva < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservas, :cliente_id, :string
  end
end
