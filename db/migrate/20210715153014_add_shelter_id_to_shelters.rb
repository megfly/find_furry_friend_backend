class AddShelterIdToShelters < ActiveRecord::Migration[5.2]
  def change
    add_column :shelters, :shelter_id, :string
  end
end
