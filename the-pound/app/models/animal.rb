class Animal < ApplicationRecord
	belongs_to :shelter
	validates :name, :animal_type, :avitar, presence: true



	def self.retrieve_spotlights
		Animal.where(has_spotlight: true)
	end

end
