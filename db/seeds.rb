# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "seeding DB"
User.destroy_all

puts "Seeding Users"
users = User.create([
	{ name: 'Ponlok', email: 'Huot', address: '1234 something ave', city: 'rosemead', zip: '92881' }, 
	{ name: 'Yess', email: 'Limon', address: '1914 park st', city: 'whittier', zip: '90605' }, 

	]) 

puts "seeding completed"