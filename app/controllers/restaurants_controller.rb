class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@review = Review.find(params[:id])
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		 if @restaurant.save
      redirect_to restaurat_path(@restaurant)
    else
      render :new
    end
  end
end
