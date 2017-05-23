class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
    	t.string :name
    	t.string :animal_type
    	t.integer :shelter_id
    	t.string :avitar
    	
    	t.timestamps
    end
  end
end
