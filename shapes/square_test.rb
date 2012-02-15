$LOAD_PATH << File.dirname(__FILE__)

require 'square'
require 'test/unit'
class SquareTest < Test::Unit::TestCase 
  
  def test_Square_area
    square = Square.new(5)
    assert_equal 25, square.area
  end
  
  def test_square_perimeter
    square = Square.new(5)
    assert_equal 20, square.perimeter 
  end
  
end