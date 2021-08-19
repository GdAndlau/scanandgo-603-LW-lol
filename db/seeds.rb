# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "CLEANING DB"
puts "------------"
puts "1. Destroying users..."
User.destroy_all
puts "Users destroyed"
puts "------------"
puts "2. Destroying stores..."
Store.destroy_all
puts "Stores destroyed"
puts "------------"
puts "3. Destroying order items..."
OrderItem.destroy_all
puts "Order items destroyed"
puts "------------"
puts "4. Destroying products..."
Product.destroy_all
puts "Products destroyed"
puts "------------"
puts "5. Destroying orders..."
Order.destroy_all
puts "Orders destroyed"
puts "------------"
puts "DB CLEANUP FINISHED"
puts "------------"
puts "STARTING TO SEED DATA "
puts "------------"
puts "1. Creating 3 users.."
User.create!(
  email: "scanandgo1@scanandgo.com",
  password: "scanandgo1@scanandgo.com"
  )
User.create!(
  email: "scanandgo2@scanandgo.com",
  password: "scanandgo2@scanandgo.com"
  )
User.create!(
  email: "scanandgo3@scanandgo.com",
  password: "scanandgo3@scanandgo.com"
  )
puts "Users created"
puts "------------"

puts "2. Creating 3 stores"
Store.create!(
  name: "Zara",
  address: "Tauentzienstraße 7a, 10789 Berlin",
  opening_hours: "9 am - 10 pm"
  )
Store.create!(
  name: "H&M",
  address: "Kurfürstendamm 237, 10719 Berlin",
  opening_hours: "9 am -18 am"
  )
Store.create!(
  name: "Douglas",
  address: "Wilmersdorfer Str. 46, 10627 Berlin",
  opening_hours: "9 am -21 pm"
  )
puts "Stores created"
puts "------------"

puts "3. Creating 3 products"
Product.create!(
  title: "Shorts",
  price: 20,
  store: Store.where(name: "Zara").first,
  image: "wscyyvfhdhmdl9kqapjp",
  )
Product.create!(
  title: "Jeans",
  description: "Fit Jeans",
  price: 30,
  store: Store.where(name: "H&M").first,
  image: "ftoamgssapv96bdq5qkt"
  )

Product.create!(
  title: "Watch",
  description: "Fancy watch",
  price: 45,
  store: Store.where(name: "Douglas").first,
  image: "jfvd1mnuldsswypivqyg"
  )
puts "Products created"
puts "------------"

puts "4. Creating 3 orders"
Order.create!(
  store: Store.where(name: "Zara").first,
  user:  User.first
  )
Order.create!(
  store: Store.where(name: "H&M").first,
  user:  User.last
  )

Order.create!(
  store: Store.where(name: "Douglas").first,
  user:  User.last
  )
puts "Orders created"
puts "------------"

puts "4. Creating 3 order order items"
OrderItem.create!(
  order: Order.first,
  product: Product.first
  )
OrderItem.create!(
  order: Order.last,
  product: Product.last
  )
OrderItem.create!(
  order: Order.last,
  product: Product.last
  )
puts "Order items created"
puts "------------"
puts "------------"
puts "DB SEEDS CREATED"
puts "------------"














