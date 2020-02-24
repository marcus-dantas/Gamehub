# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts 'Creating 100 fake games...'
100.times do
  game = Game.new(
    title: Faker::Game.title,
    category: Faker::Game.genre,
    description: Faker::Lorem.sentences(number: 2),
    address: Faker::Address.street_address,
    daily_price: rand(30..50)
  )
  game.save!
end
puts 'Finished!'


#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


