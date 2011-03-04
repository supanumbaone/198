require 'test_helper'

class DayTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Day.new.valid?
  end
end
