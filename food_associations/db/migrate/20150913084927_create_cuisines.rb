class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :name
      t.string :region
      t.boolean :spicy
      t.text :description

      t.timestamps null: false
    end
  end
end
