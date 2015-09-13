class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cooking_technique
      t.string :main_ingredient
      t.text :other_ingredients

      t.timestamps null: false
    end
  end
end
