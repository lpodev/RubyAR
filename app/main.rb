require_relative 'connection'
require_relative 'models'

# Prix d'une commande
# -------------------
#
order = Order.third
puts "Order #{order.id} has a price of #{order.price}"

# Display categories of a supplier
# --------------------------------
#
supplier = Supplier.fifth
puts "Supplier #{supplier.name} has the following categories:"
puts supplier.categories.map(&:name).join(', ')
