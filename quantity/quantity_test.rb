$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

require 'quantity_temperature_test'

class QuantityTest < Test::Unit::TestCase 

  def test_should_throw_error_adding_dissimilar_unit
    assert_raise RuntimeError do
      ArithmeticQuantity.new(12, Length.in)+ArithmeticQuantity.new(3, Volume.cup)
    end   
  end
  
  def test_should_throw_error_adding_should_not_work_unit
    assert_raise NoMethodError do
      Quantity.new(100, Temperature.f) + Quantity.new(100, Temperature.f)
    end    
    assert_raise RuntimeError do
      ArithmeticQuantity.new(100, Volume.tsp) + Quantity.new(100, Temperature.f)
    end
    assert_raise NoMethodError do
      Quantity.new(100, Temperature.f) + ArithmeticQuantity.new(100, Volume.tsp)
    end
  end
  
  def test_should_verify_quantity_when_adding_other_volume_quantities_to
    assert_equal ArithmeticQuantity.new(54, Volume.tsp), ArithmeticQuantity.new(2, Volume.tbps) + Quantity.new(1, Volume.cup)    
  end
  
  def test_should_verify_quantity_when_adding_other_length_quantities_to
    assert_equal ArithmeticQuantity.new(60, Length.in), ArithmeticQuantity.new(1, Length.yd) + Quantity.new(2, Length.ft)    
    assert_equal ArithmeticQuantity.new(4, Length.ft), ArithmeticQuantity.new(1, Length.yd) + Quantity.new(12, Length.in)    
  end
  
end