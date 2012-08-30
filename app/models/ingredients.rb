class Ingredients < ActiveRecord::Base
  attr_accessible :name

has_many :compositions
has_many :recipes, :through => :compositions

end
