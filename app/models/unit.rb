# == Schema Information
#
# Table name: units
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  short      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unit < ActiveRecord::Base
  attr_accessible :name, :short

  validates :name, presence: true, length: {minimum: 3}
  validates :short, presence: true

  has_many :ingredient


end
