class AddStatusToReserva < ActiveRecord::Migration[6.1]
  def change
    add_column :reservas, :status, :string
  end
end
