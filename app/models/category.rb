class Category < ActiveRecord::Base
  has_many :products

  scope :expensive_products, -> { joins(:products).where("products.price > 100") }

  def self.unordered
    all.select { |category| category.products.empty? }
  end

  def to_s
    name
  end
end
