$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class ArithmeticQuantityLengthTest < Test::Unit::TestCase 
  
  def test_should_verify_ArithmeticQuantity_convertion_between_length
    assert_equal ArithmeticQuantity.new(1, Length.ft), ArithmeticQuantity.new(12, Length.in)
    assert_equal ArithmeticQuantity.new(12, Length.in), ArithmeticQuantity.new(1, Length.ft)
    assert_equal ArithmeticQuantity.new(2, Length.ft), ArithmeticQuantity.new(24, Length.in)
  end
  
  def test_ArithmeticQuantity_should_not_equal_to_one_another
    assert_not_equal ArithmeticQuantity.new(1, Length.ft), ArithmeticQuantity.new(1, Length.in)
  end
  
end