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
  password: "scanandgo1@scanandgo.com",
  first_name: "John"
  )
User.create!(
  email: "scanandgo2@scanandgo.com",
  password: "scanandgo2@scanandgo.com",
  first_name: "Marco"
  )
User.create!(
  email: "scanandgo3@scanandgo.com",
  password: "scanandgo3@scanandgo.com",
  first_name: "Maria"

  )

User.create!(
  email: "jessica@jessica.com",
  password: "jessica@jessica.com",
  first_name: "Jessica"
  )

puts "Users created"
puts "------------"
puts "------------"
puts "2. Creating 35 stores"
Store.create!(
  name: "Zara",
  address: "Eberswalder Strasse 3, 10789 Berlin",
  opening_hours: "9 am - 8 pm",
  logo: "zara-logo-vector-2_udzod2"
  )
Store.create!(
  name: "Zara",
  address: "Friedrichstraße 88, 10117 Berlin",
  opening_hours: "9 am - 8 pm",
  logo: "zara-logo-vector-2_udzod2"
  )
Store.create!(
  name: "Zara",
  address: "Leipziger Pl. 12-13, 10117 Berlin",
  opening_hours: "10 am - 9 pm",
  logo: "zara-logo-vector-2_udzod2"
  )
Store.create!(
  name: "Zara",
  address: "Tauentzienstraße 7a, 10789 Berlin",
  opening_hours: "10 am- 8 pm",
  logo: "zara-logo-vector-2_udzod2"
  )
Store.create!(
  name: "H&M",
  address: "Kurfürstendamm 237, 10719 Berlin",
  opening_hours: "9 am - 6 pm",
  logo: "hnm_jzxara"
  )
Store.create!(
  name: "H&M",
  address: "Karl-Marx-Straße 92-98, 12043 Berlin",
  opening_hours: "10 am- 9 pm",
  logo: "hnm_jzxara"
  )
Store.create!(
  name: "H&M",
  address: "Grunerstraße 20, 10179 Berlin",
  opening_hours: "10 am - 9 pm",
  logo: "hnm_jzxara"
  )
Store.create!(
  name: "H&M",
  address: "Neue Schönhauser Str. 13, 10178 Berlin",
  opening_hours: "10 am - 9 pm",
  logo: "hnm_jzxara"
  )
Store.create!(
  name: "Douglas",
  address: "Gleimstrasse 1, 10437, Berlin",
  opening_hours: "9 am- 9 pm",
  logo: "logo-douglas_yel8tu"
  )
Store.create!(
  name: "Douglas",
  address: "Leipziger Pl. 12, 10117 Berlin",
  opening_hours: "10 am - 9 pm",
  logo: "logo-douglas_yel8tu"
  )
Store.create!(
  name: "Adidas",
  address: "Münzstraße 13-15, 10178 Berlin",
  opening_hours: "11 am - 7 pm",
  logo: "adidas_phnbyi"
  )
Store.create!(
  name: "Adidas",
  address: "Leipziger Pl. 12, 10117 Berlin",
  opening_hours: "10 am - 7 pm",
  logo: "adidas_phnbyi"
  )
Store.create!(
  name: "Adidas",
  address: "Budapester Str. 38, 10787 Berlin",
  opening_hours: "12 - 7 pm",
  logo: "adidas_phnbyi"
  )
Store.create!(
  name: "Rewe",
  address: "Max-Friedlaender-Bogen 9, 80339 München",
  opening_hours: "9 am - 9 am",
  logo: "Rewe_Logo_ozxbwg"
  )
Store.create!(
  name: "TK Maxx",
  address: "Karl-Marx-Straße 92-98, 12043 Berlin",
  opening_hours: "10 am - 8 pm",
  logo: "tkmaxxlogo_ivzm4b"
  )
Store.create!(
  name: "TK Maxx",
  address: "Wilmersdorfer Str. 108, 10627 Berlin",
  opening_hours: "9 am - 9 pm",
  logo: "tkmaxxlogo_ivzm4b"
  )
Store.create!(
  name: "TK Maxx",
  address: "Hauptstraße 141-144, 10827 Berlin",
  opening_hours: "10 am- 8 pm",
  logo: "tkmaxxlogo_ivzm4b",
  )
Store.create!(
  name: "Decathlon",
  address: "Rathausstraße 5, 10178 Berlin",
  opening_hours: "10 am - 9 pm",
  logo: "decathlonlogo_pfluu0"
  )
Store.create!(
  name: "Decathlon",
  address: "Schloßstraße 110, 12163 Berlin",
  opening_hours: "10 am- 8 pm",
  logo: "decathlonlogo_pfluu0"
  )
Store.create!(
  name: "Decathlon",
  address: "Wilmersdorfer Str. 46, 10627 Berlin",
  opening_hours: "10 am - 8 pm",
  logo: "decathlonlogo_pfluu0"
  )
Store.create!(
  name: "LUSH",
  address: "Friedrichstraße 96, 10117 Berlin",
  opening_hours: "10.30 am - 6 pm",
  logo: "lushlogo_kxeww6"
  )
Store.create!(
  name: "LUSH",
  address: "Rathausstraße 5, 10178 Berlin",
  opening_hours: "11 am - 7 pm",
  logo: "lushlogo_kxeww6"
  )
Store.create!(
  name: "LUSH",
  address: "Tauentzienstraße 9-12, 10789 Berlin",
  opening_hours: "11 am - 7 pm",
  logo: "lushlogo_kxeww6"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Friedrichstraße 147, 10117 Berlin",
  opening_hours: "7 am - 10 pm",
  logo: "rossmanlogo_tpm68u"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Tauentzienstraße 8, 10789 Berlin",
  opening_hours: "8 am - 10 pm",
  logo: "rossmanlogo_tpm68u"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Ansbacher Str. 18-20, 10787 Berlin",
  opening_hours: "11 am - 7 pm",
  logo: "rossmanlogo_tpm68u"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Kaiser-Wilhelm-Platz 1-2, 10827 Berlin",
  opening_hours: "8 am- 10 pm",
  logo: "rossmanlogo_tpm68u"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Manfred-von-Richthofen-Straße 14, 12101 Berlin",
  opening_hours: "9 am - 9 pm",
  logo: "rossmanlogo_tpm68u"
  )
Store.create!(
  name: "ROSSMAN",
  address: "Grunerstraße 20, 10179 Berlin",
  opening_hours: "9 am - 9 pm",
  logo: "rossmanlogo_tpm68u"
  )
Store.create!(
  name: "Snipes",
  address: "Tauentzienstraße 19, 10789 Berlin",
  opening_hours: "10 am - 8 pm",
  logo: "snipeslogo_fmiipk"
  )
Store.create!(
  name: "Snipes",
  address: "Wilmersdorfer Str. 64, 10627 Berlin",
  opening_hours: "11 am- 7 pm",
  logo: "snipeslogo_fmiipk"
  )
Store.create!(
  name: "GALERIA",
  address: "Kurfürstendamm 231, 10719 Berlin",
  opening_hours: "10 am - 8 pm",
  logo: "galerialogo_zsalmf"
  )
Store.create!(
  name: "GALERIA",
  address: "Tempelhofer Damm 191, 12099 Berlin",
  opening_hours: "11 am - 7 pm",
  logo: "galerialogo_zsalmf"
  )
Store.create!(
  name: "GALERIA",
  address: "Müllerstraße 25, 13353 Berlin",
  opening_hours: "10 am - 8 pm",
  logo: "galerialogo_zsalmf"
  )
Store.create!(
  name: "GALERIA",
  address: "Wilmersdorfer Str. 118, 10627 Berlin",
  opening_hours: "10 am - 8 pm",
  logo: "galerialogo_zsalmf"
  )

puts "Stores created"
puts "------------"



puts "4. Creating 3 products"
Product.create!(
  title: "Shorts",
  price: 25,
  price_cents: 2500,
  store: Store.where(name: "Zara").first,
  image: "shopping_tnvn9c",

  )
Product.create!(
  title: "Jeans",
  description: "Fit Jeans",
  price: 45,
  price_cents: 4500,
  store: Store.where(name: "H&M").first,
  image: "ftoamgssapv96bdq5qkt"

  )

Product.create!(
  title: "Watch",
  description: "Amelia watch",
  price: 110,
  price_cents: 11000,

  store: Store.where(name: "Rewe").first,
  image: "amelia_holzkern_holzuhr_woodwatch_fa_200320q_4_drv3wv"
  )

Product.create!(
  title: "Watch",
  description: "Amelia watch",
  price: 100,
  price_cents: 10000,
  store: Store.where(name: "Douglas").first,
  image: "amelia_holzkern_holzuhr_woodwatch_fa_200320q_4_drv3wv"
  )
puts "Products created"
puts "------------"


Product.create!(
  title: "Watch",
  description: "Fancy watch",
  price: 99,
  price_cents: 9900,

  store: Store.where(name: "Douglas").first,
  image: "HamburgQ_VintageMokka_Wristshot_900x_lwms6g"
  )

Product.create!(
  title: "Light puffer jacket",
  description: "Happiness is a puffer jacket.",
  price: 69.99,
  price_cents: 6999,

  store: Store.where(name: "Zara").first,
  image: "jacket_lidycv"
  )

Product.create!(
  title: "Beck's 6 pack",
  description: "I'll drink responsibly when there's a beer called 'Responsibly'
",
  price: 12.99,
  price_cents: 1299,

  store: Store.where(name: "Zara").first,
  image: "Becks6Pack_neu1.jpgc303967c-230b-45fd-a3fd-3fddf6af9f97Large_uivmwe"
  )

Product.create!(
  title: "Hangover sunglasses",
  description: "After a night like that you will need to wear a pair of sunglasses to deal with the reality.",
  price: 6.99,
  price_cents: 699,

  store: Store.where(name: "Zara").first,
  image: "images_tdmqbf"
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
puts "Cleanup Jessica's Profile"
@jessica  = User.where(first_name: "Jessica")
@jessicas_order = Order.where(user: @jessica.first)
@jessicas_order.destroy_all
puts "Jessicas profile is clean"


puts "------------"
puts "------------"
puts "DB SEEDS CREATED"
puts "------------"














