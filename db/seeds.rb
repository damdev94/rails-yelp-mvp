puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'japanese', phone_number: '0664001059'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian', phone_number: '0687954878'}
tokyo_store = {name: "Tokyo Store", address: "1400 pins avenue, Montreal", category: 'japanese', phone_number: '0654789632'}
chez_loic = {name: "Chez Loic", address: "9678 garnier street, Montreal", category: "french", phone_number: '0685412369'}
rosy = {name: "Rosy", address: "5878 sainte catherine, Montreal", category: "chinese", phone_number: '0645782195'}

[dishoom, pizza_east, tokyo_store, chez_loic, rosy].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
