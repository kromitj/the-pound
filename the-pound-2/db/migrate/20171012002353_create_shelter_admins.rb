class CreateShelterAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :shelter_admins do |t|
    	t.string 
      t.timestamps
    end
  end
end
