# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning data base'
Restaurant.destroy_all

puts 'Creating restaurants'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: '33 3333-3333',
    category: %w[chinese italian japanese french belgian].sample
  )
end

puts 'Finished'
