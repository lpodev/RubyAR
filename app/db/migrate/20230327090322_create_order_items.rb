class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :item_price, precision: 8, scale: 2
    end
  end
end
