class SheltersController < ApplicationController
	def show
		puts params
		@shelter = Shelter.find(params[:id])
		if request.xhr?
      		render json: {status: true, shelter: @shelter}
    	else
      		render 'show'
    	end
	end
end
