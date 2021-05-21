class PetSerializer < ActiveModel::Serializer
  belongs_to :shelter
  attributes :id, :shelter_id, :name, :animal_type, :breed, :size, :gender, :age, :color,
  :image, :good_with_children, :good_with_dogs, :good_with_cats, :house_trained, :vaccinated
end
