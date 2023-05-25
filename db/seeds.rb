# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying the weak"
Movie.destroy_all
puts "Creating the strong"
100.times do
  Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: Faker::Number.decimal(l_digits: 1, r_digits: 1))
end
