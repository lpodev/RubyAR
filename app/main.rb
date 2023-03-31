require_relative 'connection'
require_relative 'models'

# Prix d'une commande
# -------------------
#
order = Order.third
puts "Order #{order.id} has a price of #{order.price}"
