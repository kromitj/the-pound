class AnimalBreed < ApplicationRecord
	belongs_to :animal 
	belongs_to :breed
end
