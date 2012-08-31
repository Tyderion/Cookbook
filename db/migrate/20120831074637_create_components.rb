class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.float :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
