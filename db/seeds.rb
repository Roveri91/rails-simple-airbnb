# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "destroying all the FLATS"
Flat.destroy_all

puts "Creating 4 New Flats..."

4.times do
  Flat.create!(
    name: Faker::Movies::StarWars.planet,
    address: Faker::Address.full_address,
    description: Faker::Quote.yoda,
    price_per_night: rand(65...150),
    number_of_guests: rand(1...6)
  )
  puts "Flat create"
end

puts "DONE!"