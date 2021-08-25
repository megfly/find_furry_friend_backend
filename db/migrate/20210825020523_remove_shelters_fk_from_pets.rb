class RemoveSheltersFkFromPets < ActiveRecord::Migration[5.2]
  def change
    if foreign_key_exists?(:pets, :shelters)
      remove_foreign_key :pets, :shelters
    end
  end
end
