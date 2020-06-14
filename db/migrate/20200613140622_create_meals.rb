class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      
      t.string :name
      t.string :description
      t.float :price
      t.boolean :available
      t.references :meal_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
