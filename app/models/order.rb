class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  has_many :products, through: :order_items

  validates :order_items, length: { minimum: 1 }

  def price
    order_items.sum(&:item_price)
  end
end
