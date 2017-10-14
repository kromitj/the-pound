class CreateShelterAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :shelter_admins do |t|
    	t.integer :admin_user_id
    	t.integer :user_id
    	t.integer :shelter_id
      t.timestamps
    end
  end
end
