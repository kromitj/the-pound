class Animal < ApplicationRecord
	belongs_to :shelter
	has_many :breed_types
end
