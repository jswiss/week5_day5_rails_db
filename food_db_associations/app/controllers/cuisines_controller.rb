class CuisinesController < ApplicationController

	def index
		@cuisines = Cuisine.all.order('name asc')
	end

	def new
		@cuisine = Cuisine.new
	end

	def create
		
		# cuisine = Cuisine.new(cuisine_params)
		@cuisine = Cuisine.new(name: params[:cuisine]['name'], region: params[:cuisine]['region'], description: params[:cuisine]['description'])

		if @cuisine.save
			flash[:notice] = 'You added a new cuisine!'
			redirect_to cuisines_path(@cuisines)
		else
			flash.now[:error] = "Error: #{cuisine.errors.full_messages}"
			render :new
		end
	end

	def show
		@cuisine = Cuisine.find(params[:id])
	end

	def edit
		@cuisine = Cuisine.find(params[:id])		
	end

	def update
		cuisine = Cuisine.find(params[:id])

		if cuisine.update(name: params[:cuisine]['name'], region: params[:cuisine]['region'], description: params[:cuisine]['description'])
			redirect_to cuisine
		else
			render :edit
		end
	end

	def destroy
		@cuisine = Cuisine.find(params[:id]).destroy
		redirect_to root_path
	end

end
