class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		# @restaurant = params[:restaurant_id]
		if @review.save
			redirect_to restaurant_path(@restaurant)
		else
			render "/restaurants/#{restaurant_id}/reviews/new"
		end
	end

		private

		def review_params
    	params.require(:review).permit(:rating, :body, :restaurant_id)
  	end

end
