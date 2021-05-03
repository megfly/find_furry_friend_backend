class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.belongs_to :shelter, foreign_key: true
      t.string :name
      t.string :type
      t.string :breed
      t.string :size
      t.string :gender
      t.string :age
      t.string :color
      t.string :image
      t.boolean :good_with_children
      t.boolean :good_with_dogs
      t.boolean :good_with_cats
      t.boolean :house_trained
      t.boolean :vaccinated

      t.timestamps
    end
  end
end
