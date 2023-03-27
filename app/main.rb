require_relative 'connection'
require_relative 'models'

client = Client.first

puts "Produits pas chers pour #{client}"
puts client.products.cheap.map(&:name)
puts

puts "Produits commandés par lot de plus de 50 et leur quantité"
puts OrderItem.bulk(50).map(&:product).map(&:name)
