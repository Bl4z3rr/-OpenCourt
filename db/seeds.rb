# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
game = Game.create!(
  name: "Basket",
  location: "Central Foundation Girls School, 13 Harley Grove, E3 2AE",
  price: 10,
  num_of_players: 14,
  duration: 90,
  description: "Game for pros",
  date: "20 June 2019"
  )
