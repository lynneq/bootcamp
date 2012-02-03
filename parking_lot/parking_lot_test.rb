$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'parking_lot'

class ParkingLotTest < Test::Unit::TestCase
   
  def test_add_car_by_user
    parking_lot = ParkingLot.new(3)
    assert_equal ["user_1", :empty, :empty], parking_lot.add("user_1")
    
    parking_lot.add("user_2")
    parking_lot.add("user_3")
    assert_equal ["user_1", "user_2", "user_3"], parking_lot.parking_lot
    
    assert_equal "There is no more space in this parking lot!", parking_lot.add("user_4")
  end
  
  def test_remove_car_by_user
    parking_lot = ParkingLot.new(3)
    parking_lot.add("user_1")
    parking_lot.add("user_2")
    parking_lot.add("user_3")
    
    assert_equal [:empty, "user_2", "user_3"], parking_lot.remove("user_1")
    assert_equal [:empty, "user_2", :empty], parking_lot.remove("user_3")
    assert_equal [:empty, :empty, :empty], parking_lot.remove("user_2")

    assert_equal "Your car is not here!", parking_lot.remove("user_4")  
  end
  
end
