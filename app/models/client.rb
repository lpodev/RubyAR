class Client < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :orders

  def to_s
    "#{firstname} #{lastname}"
  end
end
