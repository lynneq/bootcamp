$LOAD_PATH << File.dirname(__FILE__)

require 'cube'
require 'square'
require 'test/unit'
require 'mocha'

class CubeTest < Test::Unit::TestCase 
  def test_cube_area
    mock_square = Square.new         
    expected_area = 100
    mock_square.expects(:area).returns(expected_area)#mock
    cube = Cube.new(mock_square)
    assert_equal 6 * expected_area, cube.area
  end
end