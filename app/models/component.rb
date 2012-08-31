# == Schema Information
#
# Table name: components
#
#  id            :integer          not null, primary key
#  recipe_id     :integer
#  ingredient_id :integer
#  amount        :float
#  unit          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Component < ActiveRecord::Base

  attr_accessible :recipe_id, :ingredient_id, :amount
 


  belongs_to :recipe
  belongs_to :ingredient

  validates :recipe_id, presence: true
  validates :ingredient_id, presence: true
  validates :amount, presence: true

  accepts_nested_attributes_for :ingredient
end
