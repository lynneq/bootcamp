$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'unit'

class LengthTest < Test::Unit::TestCase 

  def test_should_verify_length_unit_base_amount
    assert_equal 1, Length.in.base_amount
    assert_equal 12, Length.ft.base_amount
  end

end