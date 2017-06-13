class WelcomeController < ApplicationController
	def index 
		@animals = Animal.retrieve_spotlights
	end
end