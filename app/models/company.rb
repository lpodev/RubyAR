require_relative 'client'

class Company < Client
  validates :name, presence: true

  def to_s
    name
  end
end
