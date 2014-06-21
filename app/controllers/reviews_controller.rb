class ReviewssController < ApplicationController

	def create
		@review = Review.new(review_params)
		if @review.save
			redirect_to restaurant_path(@restaurant)
		else
			render :new
		end
end
