class Composition < ActiveRecord::Base
  attr_accessible :ingredient_id, :quantity, :recipe_id, :unit


  belongs_to :ingredient
  belongs_to :recipe

end
