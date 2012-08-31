# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :name, :unit_id

has_many :components
has_many :recipes, :through => :components
belongs_to :unit

validates :name, presence: true, length: {minimum: 3}
validates :unit_id, presence: true

end
