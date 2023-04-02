class Category < ActiveRecord::Base
  has_many :products

  def self.unordered
    all.select { |category| category.products.empty? }
  end

  def to_s
    name
  end
end
