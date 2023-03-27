class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  scope :bulk, -> (size = 100) { where('quantity >= ?', size) }
end
