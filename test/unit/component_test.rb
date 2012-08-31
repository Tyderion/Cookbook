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

require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Component.new.valid?
  end
end
