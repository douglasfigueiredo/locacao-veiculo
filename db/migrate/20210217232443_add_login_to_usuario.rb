class AddLoginToUsuario < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :login, :string
  end
end
