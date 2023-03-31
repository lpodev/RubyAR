class AddColumnsToClient < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :type, :string
    add_column :clients, :name, :string
  end
end
