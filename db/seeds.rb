# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 

petfinder = Petfinder::Client.new(ENV["KEY"], ENV["SECRET"])

# organization = petfinder.organizations(location: '02143')
organizations, pagination = petfinder.organizations({ location: '02143', limit: 5 })

organizations.each do |org| 
    #  binding.pry
    Shelter.create(
        shelter_id: org["id"],
        name: org["name"], 
        street_address: org["address"]["address1"], 
        city: org["address"]["city"], 
        state: org["address"]["state"], 
        zipcode: org["address"]["postcode"], 
        email: org["email"], 
        phone: org["phone"]
        # pets: org["animals"]
    )
end 

animals, pagination = petfinder.animals(type: 'dog', location: '02143')

animals.each do |animal|
    # binding.pry 
    Pet.create(
        shelter_id: animal["organization_id"],
        name: animal["name"],
        animal_type: animal["type"],
        breed: animal["breeds"]["primary"],
        size: animal["size"],
        gender: animal["gender"],
        age: animal["age"],
        color: animal["colors"]["primary"],
        image: animal["url"],
        good_with_children: animal["environment"]["children"],
        good_with_dogs: animal["environment"]["dogs"],
        good_with_cats: animal["environment"]["cats"],
        house_trained: animal["attributes"]["house_trained"],
        vaccinated: animal["attributes"]["shots_current"]
    )
end 

