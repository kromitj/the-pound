class AnimalsController < ApplicationController
	def index
		@animals = Animal.all
		if request.xhr?
			render json: {status: true, animals: @animals}
		else
			render 'index'
		end
	end

	def show
		puts params
		@animal = Animal.find(params[:id])
		if request.xhr?
      		render json: {status: true, animal: @animal}
    	else
      		render 'show'
    	end
	end

end
