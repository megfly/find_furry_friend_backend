class ShelterSerializer < ActiveModel::Serializer
  has_many :pets 
  attributes :id, :name, :street_address, :city, :state, :zipcode, :email, :phone
end