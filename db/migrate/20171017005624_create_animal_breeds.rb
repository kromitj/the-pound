class CreateAnimalBreeds < ActiveRecord::Migration[5.0]
  def change
    create_table :animal_breeds do |t|
    	t.integer :animal_id
    	t.integer :breed_id  
    	t.string :breed_name
      t.timestamps
    end
  end
end
