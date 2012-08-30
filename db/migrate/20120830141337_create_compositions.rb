class CreateCompositions < ActiveRecord::Migration
  def change
    create_table :compositions do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.float :quantity
      t.string :unit

      t.timestamps
    end
  end
end
