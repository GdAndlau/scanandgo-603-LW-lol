# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.create!(
  name: "Zara",
  address: "Berlin",
  opening_hours: "09-1000"
  )
Store.create!(
  name: "H&M",
  address: "Berlin",
  opening_hours: "09-1000"
  )
User.create!(
  email: "scanandg9@scanandgo.com",
  password: "scanandgo@scanandgo.com"
  )
User.create!(
  email: "scanandg10@scanandgo.com",
  password: "scanandgo1@scanandgo.com"
  )
Product.create!(
  title: "Shorts",
  price: 20,
  store_id: Store.first.id
  )
Product.create!(
  title: "Jeans",
  price: 30,
  store_id: Store.last.id
  )
Order.create!(
  store_id: Store.first.id,
  user_id:  User.first.id
  )
Order.create!(
  store_id: Store.last.id,
  user_id:  User.last.id
  )
OrderItem.create!(
  order_id: Order.first.id,
  product_id: Product.first.id
  )
OrderItem.create!(
  order_id: Order.last.id,
  product_id: Product.last.id
  )

















