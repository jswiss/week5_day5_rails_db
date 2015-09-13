class CuisinesController < ApplicationController

	def index
		@cuisines = Cuisine.all.order('name asc')
	end

	def new
		@cuisine = Cuisine.new
	end

	def create
		@cuisine = cuisine.new(cuisine_params)

		if cuisine.save
			flash[:notice] = 'You added a new cuisine!'
			redirect_to cuisine
		else
			flash.now[:error] = "Error: #{cuisine.errors.full_messages}"
			render :new
		end
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
