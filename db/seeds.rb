# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

puts "generating restaurants..."

Restaurant.create!(name: "Epicure", category: "french", address: "75008 Paris")
Restaurant.create!(name: "学中文", category: "chinese", address: "13001 Marseille")
Restaurant.create!(name: "mamma mia", category: "italian", address: "38000 Grenoble")
Restaurant.create!(name: "la baraque a frites", category: "belgian", address: "01300 Belley")
Restaurant.create!(name: "寿司バー", category: "japanese", address: "69001 Lyon")

puts "gererated #{Restaurant.count} restaurants"
