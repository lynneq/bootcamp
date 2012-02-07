$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'parking_lot'
require 'attendant'
require 'no_spaces_exception'

class AttendantTest < Test::Unit::TestCase
  
  def setup    
    @parking_lot_full = ParkingLot.new(3)
    
    @parking_lot_full.park_by_user("user_1")
    @parking_lot_full.park_by_user("user_2")
    @parking_lot_full.park_by_user("user_3")
    
    @parking_lot_avaliable = ParkingLot.new(3)
    @parking_lot_avaliable.park_by_user("user_4")
    @parking_lot_avaliable.park_by_user("user_5")
    
    @parking_lot_empty = ParkingLot.new(3)
  end
  
  def test_park_success_when_parking_lot_has_available_spaces
    parking_lot_list = Array.new
    
    parking_lot_list.push(@parking_lot_full)
    parking_lot_list.push(@parking_lot_avaliable)
    parking_lot_list.push(@parking_lot_empty)
    
    attendant = Attendant.new(parking_lot_list)
    assert_equal "user_6", attendant.park("user_6")          
    assert_equal ["user_4", "user_5", "user_6"],  @parking_lot_avaliable.parking_lot

    assert_equal "user_7", attendant.park("user_7")
    assert_equal ["user_7", :empty, :empty],  parking_lot_list[2].parking_lot    
  end
  
  def test_park_raise_no_spaces_exception_when_no_parking_lot_available
    parking_lot_list = Array.new
    
    parking_lot_list.push(@parking_lot_full)
    
    attendant = Attendant.new(parking_lot_list)
      
    assert_raise NoSpacesException do
      attendant.park("user_4")
    end
  end
  
end
