require_relative 'connection'
require_relative 'models'

# Afficher la commande la plus chère
puts "La commande la plus chère est :"
puts Order.most_expensive

# Afficher les catégories qui n'ont jamais été commandées
puts "Les catégories qui n'ont jamais été commandées sont :"
puts Category.unordered

# Afficher les clients qui n'ont jamais commandé
puts "Les clients qui n'ont jamais commandé sont :"
puts Client.without_orders

puts Client.without_orders.destroy_all
puts "Doit être vide: #{Client.without_orders.all.join}"

# Déterminer s'il y a des commandes ou non entre deux dates données
puts "Il y a des commandes entre aujourd'hui et demain:"
puts Order.between(Date.today, Date.today + 1).any?
