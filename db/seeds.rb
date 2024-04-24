# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  {name: "pizza", address: "italy", phone_number: "1234", category: "italian"},
  {name: "stirfry", address: "china", phone_number: "543543", category: "chinese"},
  {name: "sushi", address: "japan", phone_number: "7356736", category: "japanese"},
  {name: "crossant", address: "france", phone_number: "23645642", category: "french"},
  {name: "chocolate", address: "belgium", phone_number: "55654", category: "belgian"}
]
restaurants.each do |restaurant_attrs|
  Restaurant.find_or_create_by!(restaurant_attrs)
end
