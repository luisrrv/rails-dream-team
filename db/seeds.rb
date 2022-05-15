# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the db..."

Player.destroy_all
Team.destroy_all

Team.create!(name: 'Dream Team')
30.times do
  Player.create!(name: Faker::Sports::Football.unique.player)
end

puts "created #{Team.count} team"
puts "created #{Player.count} players"
