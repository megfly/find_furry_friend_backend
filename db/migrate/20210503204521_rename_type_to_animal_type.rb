class RenameTypeToAnimalType < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :type, :animal_type
  end
end
