class AddCuisineIdAndFoodIdToDish < ActiveRecord::Migration
  def change
    add_reference :dishes, :cuisine, index: true, foreign_key: true
    add_reference :dishes, :food, index: true, foreign_key: true
  end
end
