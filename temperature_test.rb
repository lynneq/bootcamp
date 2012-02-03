$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'unit'

class TemperatureTest < Test::Unit::TestCase 
  
  def test_should_verify_calculate_total_amount_returen_c_from_args
    assert_equal 30, Temperature.f.calculate_total_amount(86)
    assert_equal 100, Temperature.c.calculate_total_amount(100)
  end
  
end
