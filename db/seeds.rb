# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.find(1)
user_two = User.find(2)
user_three = User.find(3)
##Events
user.events.create(date: '16/1/2021', type_of: 'party')
user_two.events.create(date: '17/1/2020', type_of: 'Meeting')
user_three.events.create(date: '17/2/2022', type_of: 'Wedding')



# venue_one = Venue.find()
# venue_two = Venue.find()
# venue_three = Venue.find()
##Venues
Venue.create(name: 'A', city: 'Riyadh', price: '50,000 SR', capacity:'200', phone: 'xxxxxxxx', image:'nonee')
Venue.create(name: 'B', city: 'Jeddah', price: '100,000 SR', capacity:'1000', phone: '05xxxxxxxx', image:'nonee')
Venue.create(name: 'C', city: 'Riyadh', price: '20,000 SR', capacity:'150', phone: '05xxxxxxxx', image:'nonee')
