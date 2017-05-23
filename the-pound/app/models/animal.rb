class Animal < ApplicationRecord
	belongs_to :shelter
	validates :name, :animal_type, :avitar, presence: true

end
