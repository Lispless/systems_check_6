class Review < ActiveRecord::Base
	belongs_to :restaurants

	validates :rating, presence: true
	validates :body, presence: true
end
