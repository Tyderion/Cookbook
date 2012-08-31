# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :string(255)
#  instructions :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base

  attr_accessible :description, :instructions, :name, :component_ids

  validates :name, presence: true, length: {minimum: 2}
  validates :description, presence: true, length: {maximum: 100}
  
  has_many :components
  has_many :ingredients, :through => :components

  accepts_nested_attributes_for :ingredients, :components
 

end
