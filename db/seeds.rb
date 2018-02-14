# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.delete_all
Store.delete_all
Customer.delete_all

@store_1 = Store.create(name: "Top Hat Ice Cream", location: "Main Street")
@store_2 = Store.create(name: "Icy Treats", location: "5th Avenue")
@store_3 = Store.create(name: "Smith Ice Cream Shoppe", location: "High Street")
@store_4 = Store.create(name: "Flavors Galore", location: "River Lane")

@customer_1 = Customer.create(name: "Bob Cobb")
@customer_2 = Customer.create(name: "Hal Hope")
@customer_3 = Customer.create(name: "Kal Kool")
@customer_4 = Customer.create(name: "Mel Mope")

Order.create(store: @store_1, customer: @customer_3, quantity: 3)
Order.create(store: @store_2, customer: @customer_2, quantity: 2)
Order.create(store: @store_3, customer: @customer_1, quantity: 4)
Order.create(store: @store_4, customer: @customer_4, quantity: 1)
Order.create(store: @store_4, customer: @customer_3, quantity: 2)
Order.create(store: @store_3, customer: @customer_2, quantity: 1)
Order.create(store: @store_2, customer: @customer_1, quantity: 1)
Order.create(store: @store_1, customer: @customer_4, quantity: 2)