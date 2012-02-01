$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'quantity'
require 'unit'

class QuantityTest < Test::Unit::TestCase 
  def test_quantity_1ft_equals_12in
    assert_equal Quantity.new(1, Length.ft), Quantity.new(12, Length.in)
  end
  
  def test_quantity_12in_equals_1ft
    assert_equal Quantity.new(12, Length.in), Quantity.new(1, Length.ft)
  end
  
  def test_quantity_2ft_equals_24in
    assert_equal Quantity.new(2, Length.ft), Quantity.new(24, Length.in)
  end
  
  def test_quantity_1tbps_equals_3tsp
    assert_equal Quantity.new(1, Volume.tbps), Quantity.new(3, Volume.tsp)
  end
  
  def test_quantity_2tbps_equals_6tsp
    assert_equal Quantity.new(2, Volume.tbps), Quantity.new(6, Volume.tsp)
  end
  
  def test_quantity_1oz_equals_2tbps
    assert_equal Quantity.new(1,Volume.oz), Quantity.new(2, Volume.tbps)
  end
  
  def test_quantity_2oz_equals_4tbps
    assert_equal Quantity.new(2,Volume.oz), Quantity.new(4, Volume.tbps)
  end
  
  def test_quantity_8oz_equals_1cup
    assert_equal Quantity.new(8, Volume.oz), Quantity.new(1, Volume.cup)
  end
  
  def test_quantity_24oz_equals_3cup
    assert_equal Quantity.new(24, Volume.oz), Quantity.new(3, Volume.cup)
  end

  def test_quantity_1cup_equals_16tbps
    assert_equal Quantity.new(1, Volume.cup), Quantity.new(16, Volume.tbps)
  end
  
  def test_quantity_1cup_equals_48tsp
    assert_equal Quantity.new(1, Volume.cup), Quantity.new(48, Volume.tsp)
  end
  
end