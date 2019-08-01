# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# Create 100 cities
100.times do
  City.create(city_name:Faker::Address.city)
end
# Create 100 dog
100.times do
  Dog.create(name:Faker::Name.first_name, race:Faker::Name.last_name, city:City.find(rand(1..100)))
end
# Create 100 dogsitter
100.times do
  Dogsitter.create(name:Faker::Name.name, city:City.find(rand(1..100)))
end
# Create 100 stroll
100.times do
  Stroll.create(duration:rand(1..10000), dog:Dog.find(rand(1..100)), dogsitter:Dogsitter.find(rand(1..100)))
end
