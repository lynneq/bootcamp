$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'rectangle'
class RectangleTest < Test::Unit::TestCase 
  
  def test_rectangle_area
    rectangle = Rectangle.new(20, 5)
    assert_equal 100, rectangle.area
  end
  
  def test_rectangle_perimeter
    rectangle = Rectangle.new(20, 5)
    assert_equal 50, rectangle.perimeter 
  end
  
end