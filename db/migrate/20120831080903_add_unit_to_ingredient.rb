class AddUnitToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :unit_id, :integer
  end
end
