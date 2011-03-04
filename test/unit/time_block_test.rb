require 'test_helper'

class TimeBlockTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TimeBlock.new.valid?
  end
end
