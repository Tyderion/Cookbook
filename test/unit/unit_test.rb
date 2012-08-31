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

require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Unit.new.valid?
  end
end
