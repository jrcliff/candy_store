# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Candy.destroy_all

50.times do
calorie_count = (50..100).to_a.sample
tf = [true, false].sample
Candy.create(name: Faker::Dessert.variety, calories: calorie_count, wrapper_color: Faker::Color.color_name, has_nuts: tf)
end