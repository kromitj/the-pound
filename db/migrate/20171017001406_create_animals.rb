class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
    	t.integer :shelter_id
    	t.integer :adoption_id
    	t.string :name
    	t.string :age_in_months
    	t.string :animal_type
    	t.string :sex
    	t.boolean :declawed
    	t.string :size
    	t.integer :weight
    	t.boolean :is_spayed_or_nudered
    	t.integer :adoption_fee
    	t.string :desc
    	t.string :picture
      t.timestamps
    end
  end
end
