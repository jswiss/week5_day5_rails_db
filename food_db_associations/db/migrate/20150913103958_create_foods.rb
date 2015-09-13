class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.boolean :meat_based

      t.timestamps null: false
    end
  end
end
