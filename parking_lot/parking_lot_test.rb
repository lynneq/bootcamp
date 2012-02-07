$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'parking_lot'
require 'no_spaces_exception'
require 'car_not_found_exception'

class ParkingLotTest < Test::Unit::TestCase
  
  def test_should_show_parking_lot
    parking_lot = ParkingLot.new(3)
    parking_lot.park_by_user("user_1")
    parking_lot.park_by_user("user_2")
    
    assert_equal ["user_1", "user_2", :empty], parking_lot.parking_lot    
  end
  
  def test_available_spaces_in_parking_lot
    parking_lot = ParkingLot.new(3)
    parking_lot.park_by_user("user_1")
    parking_lot.park_by_user("user_2")
    
    assert_equal 1, parking_lot.spaces       
  end
  
  def test_should_raise_no_spaces_exception_when_checking_available_spaces
    parking_lot = ParkingLot.new(3)
    parking_lot.park_by_user("user_1")
    parking_lot.park_by_user("user_2")
    parking_lot.park_by_user("user_3")
    
    assert_raise NoSpacesException do
      parking_lot.validate_zero_space  
    end
  end
  
  def test_should_success_to_park_by_user
    parking_lot = ParkingLot.new(3)
    parking_lot.park_by_user("user_1")
    assert_equal ["user_1", :empty, :empty], parking_lot.parking_lot
    
    parking_lot.park_by_user("user_2")
    assert_equal "user_3", parking_lot.park_by_user("user_3")
  end
  
  def test_park_additional_cars_should_raise_no_spaces_error
    parking_lot = ParkingLot.new(3)
    
    parking_lot.park_by_user("user_1")
    parking_lot.park_by_user("user_2")
    parking_lot.park_by_user("user_3")
    
    assert_raise NoSpacesException do
      parking_lot.park_by_user("user_4")
    end
  end
  
  def test_should_remove_car_by_user
    parking_lot = ParkingLot.new(3)
    parking_lot.park_by_user("user_1")
    parking_lot.park_by_user("user_2")
    parking_lot.park_by_user("user_3")
    
    parking_lot.remove_by_user("user_1")
    assert_equal [:empty, "user_2", "user_3"], parking_lot.parking_lot
    
    parking_lot.remove_by_user("user_3")
    assert_equal [:empty, "user_2", :empty], parking_lot.parking_lot
    
    parking_lot.remove_by_user("user_2")
    assert_equal [:empty, :empty, :empty], parking_lot.parking_lot
  end

  def test_should_raise_car_not_found_exception_when_remove_by_not_exist_user
    parking_lot = ParkingLot.new(3)
    parking_lot.park_by_user("user_1")
    parking_lot.park_by_user("user_2")
    parking_lot.park_by_user("user_3")

    assert_raise CarNotFoundException do
      parking_lot.remove_by_user("user_4")  
    end
  end
  
end
