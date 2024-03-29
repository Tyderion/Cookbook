class Recipe < ActiveRecord::Base
  attr_accessible :description, :instructions, :name

  validates :name, presence: true, length: {minimum: 2}
  validates :description, presence: true, length: {maximum: 100}
  
  has_many :compositions
  has_many :ingredients, :through => :compositions

end
