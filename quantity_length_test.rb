$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class QuantityLengthTest < Test::Unit::TestCase 
  
  def test_should_verify_quantity_convertion_between_length
    assert_equal Quantity.new(1, Length.ft), Quantity.new(12, Length.in)
    assert_equal Quantity.new(12, Length.in), Quantity.new(1, Length.ft)
    assert_equal Quantity.new(2, Length.ft), Quantity.new(24, Length.in)
  end
  
  def test_quantity_should_not_equal_to_one_another
    assert_not_equal Quantity.new(1, Length.ft), Quantity.new(1, Length.in)
  end
  
end