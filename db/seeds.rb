# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Droping DB"
User.destroy_all
Report.destroy_all


puts "seeding Users DB"
u1 = User.new(name: 'Ponlok Huot', email: 'huot@blah.com', address: '1234 something ave', city: 'rosemead', zip: '92881')
u1.password = 'password'
u1.save!
u2 = User.new(name: 'Yess Limon', email: 'limon@blah.com', address: '1914 park st', city: 'whittier', zip: '90605')
u2.password = 'password'
u2.save!

puts 'seeding reports db'
r1 = Report.new(name: 'robbery', user: u1 ).save!

puts "seeding completed"