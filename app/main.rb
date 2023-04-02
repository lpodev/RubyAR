require_relative 'connection'
require_relative 'models'

# Afficher les catégories avec des produits plus chers que 100
puts "Afficher les catégories avec des produits plus chers que 100"
puts "========================================================="
puts Category.expensive_products
