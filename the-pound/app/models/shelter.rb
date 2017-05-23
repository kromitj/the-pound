class Shelter < ApplicationRecord
	has_many :animals
	validates :name, :address, :phone_number, presence: true
end
