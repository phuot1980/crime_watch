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
u1 = User.new(name: 'Ponlok Huot', email: 'excon211@gmail.com', address: '1234 something ave', city: 'rosemead', zip: '92881')
u1.password = 'password'
u1.save!
u2 = User.new(name: 'Yess Limon', email: 'whylimon@gmail.com', address: '1914 park st', city: 'whittier', zip: '90605')
u2.password = 'password'
u2.save!

puts 'seeding reports db'
lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in scelerisque ipsum. Nullam in dapibus justo. Aenean pulvinar augue non 
diam fringilla vehicula. Sed blandit vehicula ultrices. In hac habitasse platea dictumst. Mauris dictum odio eget nunc suscipit, quis lobortis 
nulla dictum. Maecenas commodo auctor nulla ac feugiat. Proin ultricies nisl id tellus mattis, sit amet condimentum nunc maximus. Duis eget elit 
eu nunc accumsan mollis non vel tellus. Nullam pretium eleifend aliquam. Vivamus at eleifend dui. Mauris imperdiet, turpis eget facilisis venenatis, 
ipsum nulla laoreet enim, in ornare nisl lectus vitae ligula. Suspendisse potenti.Vivamus quis diam nulla. Morbi pulvinar mi id risus pharetra, ut sollicitudin 
ex tristique. Suspendisse ultricies, nisl sed ullamcorper pretium, metus erat aliquam nunc, quis ullamcorper dui purus ac dolor. Duis aliquam eleifend placerat. 
Duis in mi varius, suscipit metus ac, tempor lacus. Vivamus nec hendrerit metus. Nullam at nulla sit amet neque posuere facilisis. Fusce faucibus efficitur nunc, 
at maximus lacus ultrices sit amet. Integer tincidunt nulla in diam tempus viverra. Morbi vestibulum, orci in laoreet hendrerit, enim eros fermentum sapien, 
sed scelerisque erat neque ut magna. Phasellus dapibus pretium tellus efficitur ultrices. Class aptent taciti sociosqu ad litora torquent per conubia nostra, 
per inceptos himenaeos. Mauris pharetra sagittis turpis ac semper. Pellentesque vestibulum dignissim odio non aliquet.
"
Report.new(name: 'home invasion', address: '1914 park st', city: 'whittier', state: 'ca', zip: '90605', body: lorem, user: u1 ).save!
Report.new(name: 'stranger walking by', address: '1914 park st', city: 'whittier', state: 'ca', zip: '90210', body: lorem, user: u1 ).save!
Report.new(name: 'long near elementary school', address: '1914 rosemead blvd', city: 'whittier', state: 'ca', zip: '92887',  body: lorem, user: u1 ).save!
Report.new(name: 'drug dealers', address: '1914 main st', city: 'whittier', state: 'ca', zip: '91770', body: lorem, user: u2 ).save!
Report.new(name: 'teenagers loitering', address: '1914 bob st', city: 'whittier', state: 'ca', zip: '92886', body: lorem,user: u2 ).save!
puts "seeding completed"

