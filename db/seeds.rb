# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all

25.times do |index|
  Item.create!(name: Faker::Address.country,
              price: Faker::Number.between(35, 1000000000))
end

25.times do |index|
  Item.create!(name: Faker::Beer.name,
              price: Faker::Number.between(1, 100))
end

5.times do |index|
  Item.create!(name: Faker::Color.color_name,
              price: Faker::Number.between(100, 1000000))
end

p "Created #{Item.count} Items"
