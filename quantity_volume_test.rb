$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class QuantityVolumeTest < Test::Unit::TestCase 

  def test_should_verify_quantity_convertion_between_volume
    assert_equal Quantity.new(1, Volume.tbps), Quantity.new(3, Volume.tsp)
    assert_equal Quantity.new(2, Volume.tbps), Quantity.new(6, Volume.tsp)
    assert_equal Quantity.new(1,Volume.oz), Quantity.new(2, Volume.tbps)
    assert_equal Quantity.new(2,Volume.oz), Quantity.new(4, Volume.tbps)
    assert_equal Quantity.new(8, Volume.oz), Quantity.new(1, Volume.cup)
    assert_equal Quantity.new(24, Volume.oz), Quantity.new(3, Volume.cup)
    assert_equal Quantity.new(1, Volume.cup), Quantity.new(16, Volume.tbps)
    assert_equal Quantity.new(1, Volume.cup), Quantity.new(48, Volume.tsp)
  end
  
  def test_quantity_should_not_equal_to_one_another
    assert_not_equal Quantity.new(1, Volume.cup), Quantity.new(1, Volume.tsp)
    assert_not_equal Quantity.new(1, Volume.tbps), Quantity.new(1, Volume.tsp)
    assert_not_equal Quantity.new(1, Volume.cup), Quantity.new(1, Volume.oz)    
  end
  
end