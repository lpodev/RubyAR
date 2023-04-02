class Order < ActiveRecord::Base
  belongs_to :client
  has_many :order_items
  has_many :products, through: :order_items

  validates :order_items, length: { minimum: 1 }

  scope :between, ->(start_date, end_date) { where(created_at: start_date..end_date) }

  def to_s
    "Order ##{id} price: #{price}"
  end

  def price
    order_items.sum(&:item_price)
  end

  def self.order_by_price
    all.sort_by(&:price)
  end

  def self.most_expensive
    order_by_price.last
  end
end
