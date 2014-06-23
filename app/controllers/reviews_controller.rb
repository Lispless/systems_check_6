class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		if @review.save
			redirect_to restaurant_path(@restaurant)
		else
			render :new
		end
	end

		private

		def review_params
    	params.require(:review).permit(:rating)
  	end

end
