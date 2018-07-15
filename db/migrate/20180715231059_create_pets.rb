class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.text :name
      t.text :species
      t.text :breed
      t.float :height
      t.float :weight
      t.integer :user_id

      t.timestamps
    end
  end
end
