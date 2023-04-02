class Client < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :orders
  has_many :authored_comments, class_name: 'Comment', foreign_key: :author_id

  def to_s
    "#{firstname} #{lastname}"
  end
end
