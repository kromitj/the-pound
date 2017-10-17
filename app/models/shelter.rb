class Shelter < ApplicationRecord
	has_many :shelter_admins
	has_many :animals
	
end
