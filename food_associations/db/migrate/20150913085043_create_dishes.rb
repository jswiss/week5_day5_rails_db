class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :cuisine
      t.string :main_ingredient
      t.string :other_ingredients

      t.timestamps null: false
    end
  end
end
