$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class QuantityTest < Test::Unit::TestCase 

  def test_should_throw_error_adding_dissimilar_unit
    assert_raise RuntimeError do
      Quantity.new(12, Length.in)+Quantity.new(3, Volume.cup)
    end   
  end
  
  def test_should_verify_quantity_when_adding_other_volume_quantities_to
    assert_equal Quantity.new(54, Volume.tsp), Quantity.new(2, Volume.tbps) + Quantity.new(1, Volume.cup)    
  end
  
  def test_should_verify_quantity_when_adding_other_length_quantities_to
    assert_equal Quantity.new(60, Length.in), Quantity.new(1, Length.yd) + Quantity.new(2, Length.ft)    
    assert_equal Quantity.new(4, Length.ft), Quantity.new(1, Length.yd) + Quantity.new(12, Length.in)    
  end
  
end