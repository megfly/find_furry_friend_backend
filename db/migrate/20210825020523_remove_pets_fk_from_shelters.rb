class RemovePetsFkFromShelters < ActiveRecord::Migration[5.2]
  def change
    if foreign_key_exists?(:shelters, :pets)
      remove_foreign_key :shelters, :pets
    end
  end
end
