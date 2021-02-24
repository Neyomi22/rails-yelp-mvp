# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizzeria = { name: "Pizzeria", address: "7, Clyde North, VIC ", phone_number: "0454 575 555", category: "italian" }
lucky_chan = { name: "Lucky chan", address: "14, Flinder street, VIC", phone_number: "0444 457 345", category: "chinese" }
la_cafe = { name: "La cafe", address: "17, Glen waverely", phone_number: "0458 345 687", category: "french" }
yukimao = { name: "Yukimao", address: "18, Clayton, VIC", phone_number: "0458 678 495", category: "japanese" }
waffles = { name: "Waffles", address: "20, Richmond, VIC", phone_number: "0425 458 585", category: "belgian" }

[ pizzeria, lucky_chan, la_cafe, yukimao, waffles ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"