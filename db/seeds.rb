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

user.events.create(date: '16/1/2021', venue:'Z', type_of: 'party')
user_two.events.create(date: '17/1/2020', venue:'Y', type_of: 'Meeting')
user_three.events.create(date: '17/2/2022', venue:'z', type_of: 'Wedding')


Venue.create(name: 'X', city: 'Riyadh', price: '50,000 SR', capacity:'200', phone: '05xxxxxxxx', image:'none')
Venue.create(name: 'Y', city: 'Jeddah', price: '100,000 SR', capacity:'1000', phone: '05xxxxxxxx', image:'none')
Venue.create(name: 'Z', city: 'Riyadh', price: '20,000 SR', capacity:'150', phone: '05xxxxxxxx', image:'none')
