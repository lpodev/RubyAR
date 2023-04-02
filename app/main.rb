require_relative 'connection'
require_relative 'models'

# Afficher les commandes qui ont été passées par des clients de type Company
supplier = Supplier.first
puts "Company qui ont commandé chez un fournisseur:"
puts supplier.companies_who_ordered
