class Dish < ActiveRecord::Base
	belongs_to :food
	belongs_to :cuisine
end
