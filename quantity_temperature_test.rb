$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class QuantityTemperatureTest < Test::Unit::TestCase 

  def test_quantity_should_not_equal_to_one_another
    assert_not_equal Quantity.new(1, Temperature.c), Quantity.new(1, Temperature.f)
  end
  
  def test_should_verify_quantity_convertion_between_temperature
    assert_equal Quantity.new(100, Temperature.c), Quantity.new(212, Temperature.f)
    assert_equal Quantity.new(212, Temperature.f), Quantity.new(100, Temperature.c)
    assert_equal Quantity.new(0, Temperature.c), Quantity.new(32, Temperature.f)
    assert_equal Quantity.new(32, Temperature.f), Quantity.new(0, Temperature.c)
  end
      
end