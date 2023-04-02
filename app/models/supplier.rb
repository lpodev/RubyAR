class Supplier < ActiveRecord::Base
  has_many :products
  has_many :categories, -> { distinct }, through: :products
  has_many :orders, through: :products
  has_many :clients_who_ordered, -> { distinct }, through: :orders, source: :client
  has_many :comments, as: :target

  def companies_who_ordered
    clients_who_ordered.where type: 'Company'
  end
end
