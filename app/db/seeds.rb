require_relative '../models'

sports = Category.create!(name: "Sports", description: "Sports")
electronics = Category.create!(name: "Electronics", description: "Electronics")
house = Category.create!(name: "House", description: "House")

Supplier.create!([
  {name: "Nike"},
  {name: "Adidas"},
  {name: "Sony"},
  {name: "Samsung"},
  {name: "IKEA"},
  {name: "Leroy Merlin"},
])

Product.create!([
  {name: "Basketball", description: "Basketball", price: 19.99, category: sports, supplier: Supplier.first},
  {name: "Football", description: "Football", price: 29.99, category: sports, supplier: Supplier.second},
  {name: "TV", description: "TV", price: 39.99, category: electronics, supplier: Supplier.third},
  {name: "Radio", description: "Radio", price: 49.99, category: electronics, supplier: Supplier.fourth},
  {name: "Lamp", description: "Lamp", price: 59.99, category: house, supplier: Supplier.fifth},
  {name: "Chair", description: "Chair", price: 69.99, category: house, supplier: Supplier.fifth},
])

Client.create!([
  {firstname: "Luis Pedro", lastname: "Pinheiro", type: "Individual"},
  {firstname: "Victoria", lastname: "Montabonne", type: "Individual"},
  {firstname: "Thomas", lastname: "Le Train", type: "Individual"},
])

OrderItem.create!([
  {product: Product.first, quantity: 5},
  {product: Product.second, quantity: 10},
  {product: Product.third, quantity: 7},
  {product: Product.fourth, quantity: 4},
])


Order.create!([
  {client: Client.first, order_items: [OrderItem.first]},
  {client: Client.second, order_items: [OrderItem.second]},
  {client: Client.third, order_items: [OrderItem.third, OrderItem.fourth]},
])

Product.create!([
  {name: "Sport Chewing-Gums", description: "Sport Chewing-Gums", price: 0.1, category: sports, supplier: Supplier.first},
  {name: "Wall Nails", description: "Wall Nails", price: 0.2, category: house, supplier: Supplier.fifth},
])

OrderItem.create!([
  {product: Product.last(2).first, quantity: 100},
  {product: Product.first, quantity: 200},
  {product: Product.last, quantity: 50},
])

Order.create!([
  {client: Client.first, order_items: [OrderItem.last]},
  {client: Client.first, order_items: [OrderItem.last(3).first]},
])

Client.create!([
  {name: "Microsoft", type: "Company"},
  {name: "Apple", type: "Company"},
  {name: "Google", type: "Company"},
])
