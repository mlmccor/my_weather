# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.first || User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password')

cities = [
  {name: "Pittsburgh", state: "Pennsylvania", latitude: 40.4416941, longitude: -79.9900861 },
  {name: "Indianapolis", state: "Indiana", latitude: 39.7683331, longitude: -86.1583502 },
  {name: "Guthrie", state: "Oklahoma", latitude: 35.8789231, longitude: -97.4252772 }
]
cities.each do |city_data|
  user.cities.create(city_data)
end
