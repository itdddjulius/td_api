class CreateMeasurements < ActiveRecord::Migration[5.0]
  def change
    create_table :measurements do |t|
      t.float :amount
      t.string :metric
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
