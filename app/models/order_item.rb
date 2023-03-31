class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  scope :bulk, -> (size = 100) { where('quantity >= ?', size) }

  before_save :set_item_price

  def set_item_price
    self.item_price = product.price
  end
end
