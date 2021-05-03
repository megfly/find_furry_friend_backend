# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = Shelter.create(name: "Border Collie Rescue", street_address: "123 border st.", city: "Phoenix", state: "AZ", zipcode: "02143", 
email: "bordercollie@gmail.com", phone: "555-555-5555")

b = Pet.create(name: "Tobi", type: "dog", breed: "Border Collie", size: "medium", gender: "male", age: "14", color: "black and white",
good_with_cats: true, good_with_children: true, good_with_dogs: true, house_trained: true, vaccinated: true, shelter_id: a.id)