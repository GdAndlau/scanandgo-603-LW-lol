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
puts "------------"
puts "2. Creating 35 stores"
Store.create!(
  name: "Zara",
  address: "Eberswalder Strasse 3, 10789 Berlin",
  opening_hours: "9 - 20"
  )
Store.create!(
  name: "Zara",
  address: "Friedrichstraße 88, 10117 Berlin",
  opening_hours: "9 - 20"
  )
Store.create!(
  name: "Zara",
  address: "Leipziger Pl. 12-13, 10117 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "Zara",
  address: "Tauentzienstraße 7a, 10789 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "H&M",
  address: "Kurfürstendamm 237, 10719 Berlin",
  opening_hours: "9 - 18"
  )
Store.create!(
  name: "H&M",
  address: "Karl-Marx-Straße 92-98, 12043 Berlin",
  opening_hours: "10 - 21"
  )
Store.create!(
  name: "H&M",
  address: "Grunerstraße 20, 10179 Berlin",
  opening_hours: "10 - 21"
  )
Store.create!(
  name: "H&M",
  address: "Neue Schönhauser Str. 13, 10178 Berlin",
  opening_hours: "10 - 21"
  )
Store.create!(
  name: "Douglas",
  address: "Gleimstrasse 1, 10437, Berlin",
  opening_hours: "9 - 21"
  )
Store.create!(
  name: "Douglas",
  address: "Leipziger Pl. 12, 10117 Berlin",
  opening_hours: "10 - 21"
  )
Store.create!(
  name: "Adidas",
  address: "Münzstraße 13-15, 10178 Berlin",
  opening_hours: "11 - 19"
  )
Store.create!(
  name: "Adidas",
  address: "Leipziger Pl. 12, 10117 Berlin",
  opening_hours: "10 - 19"
  )
Store.create!(
  name: "Adidas",
  address: "Budapester Str. 38, 10787 Berlin",
  opening_hours: "12 - 19"
  )
Store.create!(
  name: "Rewe",
  address: "Max-Friedlaender-Bogen 9, 80339 München",
  opening_hours: "9 - 21"
  )
Store.create!(
  name: "TK Maxx",
  address: "Karl-Marx-Straße 92-98, 12043 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "TK Maxx",
  address: "Kant Center, Wilmersdorfer Str. 108, 10627 Berlin",
  opening_hours: "9 - 21"
  )
Store.create!(
  name: "TK Maxx",
  address: "Kaiser Wilhelm Passage, Hauptstraße 141-144, 10827 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "Decathlon",
  address: "Rathausstraße 5, 10178 Berlin",
  opening_hours: "10 - 21"
  )
Store.create!(
  name: "Decathlon",
  address: "Schloßstraße 110, 12163 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "Decathlon",
  address: "Wilmersdorfer Str. 46 in den Wilmersdorfer Arcaden, 10627 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "LUSH",
  address: "Friedrichstraße 96, 10117 Berlin",
  opening_hours: "10.30 - 18"
  )
Store.create!(
  name: "LUSH",
  address: "Rathausstraße 5, 10178 Berlin",
  opening_hours: "11 - 19"
  )
Store.create!(
  name: "LUSH",
  address: "Tauentzienstraße 9-12, 10789 Berlin",
  opening_hours: "11 - 19"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Friedrichstraße 147, 10117 Berlin",
  opening_hours: "7 - 22"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Tauentzienstraße 8, 10789 Berlin",
  opening_hours: "8 - 22"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Ansbacher Str. 18-20, 10787 Berlin",
  opening_hours: "11 - 19"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Kaiser-Wilhelm-Platz 1-2, 10827 Berlin",
  opening_hours: "8 - 22"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Manfred-von-Richthofen-Straße 14, 12101 Berlin",
  opening_hours: "9 - 21"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Grunerstraße 20, 10179 Berlin",
  opening_hours: "9 - 21"
  )
Store.create!(
  name: "Snipes",
  address: "Tauentzienstraße 19, 10789 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "Snipes",
  address: "Wilmersdorfer Str. 64, 10627 Berlin",
  opening_hours: "11 - 19"
  )
Store.create!(
  name: "GALERIA",
  address: "Kurfürstendamm 231, 10719 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "GALERIA",
  address: "Alexanderpl. 9, 10178 Berlin",
  opening_hours: "11 - 19"
  )
Store.create!(
  name: "GALERIA",
  address: "Müllerstraße 25, 13353 Berlin",
  opening_hours: "10 - 20"
  )
Store.create!(
  name: "GALERIA",
  address: "Wilmersdorfer Str. 118, 10627 Berlin",
  opening_hours: "10 - 20"
  )





puts "Stores created"
puts "------------"



puts "4. Creating 3 products"
Product.create!(
  title: "Shorts",
  price: 20,
  store: Store.where(name: "Zara").first,
  image: "shopping_tnvn9c",

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
  description: "Amelia watch",
  price: 100,
  store: Store.where(name: "Rewe").first,
  image: "amelia_holzkern_holzuhr_woodwatch_fa_200320q_4_drv3wv"
  )

Product.create!(
  title: "Watch",
  description: "Amelia watch",
  price: 100,
  store: Store.where(name: "Douglas").first,
  image: "amelia_holzkern_holzuhr_woodwatch_fa_200320q_4_drv3wv"
  )
puts "Products created"
puts "------------"


Product.create!(
  title: "Watch",
  description: "Fancy watch",
  price: 45,
  store: Store.where(name: "Douglas").first,
  image: "HamburgQ_VintageMokka_Wristshot_900x_lwms6g"
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














