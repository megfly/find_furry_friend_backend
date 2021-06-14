# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do 
#     organization.each do |organization|
#         Shelter.create([{ name: organization.name }, { phone: organization.phone }, { email: organization.email }])
#         binding.pry
#     end 
# end     

petfinder = Petfinder::Client.new(ENV["KEY"], ENV["SECRET"])

#endpoints

# organization = petfinder.organizations(location: '02143')
organizations, pagination = petfinder.organizations({ location: '02143', limit: 5 })

# binding.pry 

organizations.each do |org| 
    # binding.pry
    Shelter.create(
        name: org["name"], 
        street_address: org["address"]["address1"], 
        city: org["address"]["city"], 
        state: org["address"]["state"], 
        zipcode: org["address"]["postcode"], 
        email: org["email"], 
        phone: org["phone"]
    )
end 

# (:name, :street_address, :city, :state, :zipcode, :email, :phone)