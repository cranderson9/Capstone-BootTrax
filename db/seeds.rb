# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(email: "jake@gmail.com", first_name: "Jake", last_name: "Roberts", total_miles: 18.1)
# User.create!(email: "suzy@gmail.com", first_name: "Suzy", last_name: "Simpson", total_miles: 25)
# User.create!(email: "ron@gmail.com", first_name: "Ron", last_name: "Damon", total_miles: 45.3)
# User.create!(email: "mike@gmail.com", first_name: "Mike", last_name: "Williams", total_miles: 45.6)

Hike.create!(user_id: 1, status: "finished", miles: 3.7, notes: "Weather was great. Great hike!")
Hike.create!(user_id: 3, status: "finished", miles: 4.2, notes: "Beautiful sunrise. Great workout.")
Hike.create!(user_id: 4, status: "finished", miles: 1.8, notes: "This one was difficult. Lots of hills!")
Hike.create!(user_id: 1, status: "hiking")
Hike.create!(user_id: 2, status: "paused")

