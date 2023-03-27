require_relative '../models'

sports = Category.create!(name: "Sports", description: "Sports")
electronics = Category.create!(name: "Electronics", description: "Electronics")
house = Category.create!(name: "House", description: "House")

Product.create!([
  {name: "Basketball", description: "Basketball", price: 19.99, category: sports},
  {name: "Football", description: "Football", price: 29.99, category: sports},
  {name: "TV", description: "TV", price: 39.99, category: electronics},
  {name: "Radio", description: "Radio", price: 49.99, category: electronics},
  {name: "Lamp", description: "Lamp", price: 59.99, category: house},
  {name: "Chair", description: "Chair", price: 69.99, category: house},
])

Client.create!([
  {firstname: "Luis Pedro", lastname: "Pinheiro"},
  {firstname: "Victoria", lastname: "Montabonne"},
  {firstname: "Thomas", lastname: "Le Train"},
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
