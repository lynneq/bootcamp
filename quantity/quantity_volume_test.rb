$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class ArithmeticArithmeticQuantityVolumeTest < Test::Unit::TestCase 

  def test_should_verify_ArithmeticQuantity_convertion_between_volume
    assert_equal ArithmeticQuantity.new(1, Volume.tbps), ArithmeticQuantity.new(3, Volume.tsp)
    assert_equal ArithmeticQuantity.new(2, Volume.tbps), ArithmeticQuantity.new(6, Volume.tsp)
    assert_equal ArithmeticQuantity.new(1,Volume.oz), ArithmeticQuantity.new(2, Volume.tbps)
    assert_equal ArithmeticQuantity.new(2,Volume.oz), ArithmeticQuantity.new(4, Volume.tbps)
    assert_equal ArithmeticQuantity.new(8, Volume.oz), ArithmeticQuantity.new(1, Volume.cup)
    assert_equal ArithmeticQuantity.new(24, Volume.oz), ArithmeticQuantity.new(3, Volume.cup)
    assert_equal ArithmeticQuantity.new(1, Volume.cup), ArithmeticQuantity.new(16, Volume.tbps)
    assert_equal ArithmeticQuantity.new(1, Volume.cup), ArithmeticQuantity.new(48, Volume.tsp)
  end
  
  def test_ArithmeticQuantity_should_not_equal_to_one_another
    assert_not_equal ArithmeticQuantity.new(1, Volume.cup), ArithmeticQuantity.new(1, Volume.tsp)
    assert_not_equal ArithmeticQuantity.new(1, Volume.tbps), ArithmeticQuantity.new(1, Volume.tsp)
    assert_not_equal ArithmeticQuantity.new(1, Volume.cup), ArithmeticQuantity.new(1, Volume.oz)    
  end
  
end