class Cuisine < ActiveRecord::Base
	has_many :dishes
	has_many :foods, through: :dishes
end
