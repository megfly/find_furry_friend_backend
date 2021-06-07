# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

require_relative '../.petfinder_key'
# binding.pry

petfinder = Petfinder::Client.new

organization = petfinder.organizations(location: '02143')
animals = petfinder.animals(location: '02143')


# 5.times do 
#     organization.each do |organization|
#         Shelter.create([{ name: organization.name }, { phone: organization.phone }, { email: organization.email }])
#         binding.pry
#     end 
# end     