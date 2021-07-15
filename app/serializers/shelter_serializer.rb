class ShelterSerializer < ActiveModel::Serializer
  has_many :pets 
  attributes :id, :shelter_id, :name, :street_address, :city, :state, :zipcode, :email, :phone
  
end