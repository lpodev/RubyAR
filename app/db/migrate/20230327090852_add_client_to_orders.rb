class AddClientToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :client, foreign_key: true
  end
end
