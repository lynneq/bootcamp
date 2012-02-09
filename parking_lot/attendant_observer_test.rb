$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'parking_lot'
require 'attendant'
require 'no_parking_lot_available_exception'

class AttendantObserverTest < Test::Unit::TestCase
  def test_attendant_park_car_fail_due_to_reach_limit
      parking_lot_80 = ParkingLot.new(5)
      
      parking_lot_80.park_by_user("user_1")
      parking_lot_80.park_by_user("user_2")
      parking_lot_80.park_by_user("user_3")
          
      parking_lot_list = Array.new
      parking_lot_list.push(parking_lot_80)
      
      attendant = Attendant.new(parking_lot_list) 
         
      assert_equal "user_4", attendant.park("user_4")
      
      assert_raise NoParkingLotAvailaleException do
        attendant.park("user_5")
      end       
  end
    
  def test_attendant_park_car_success_due_to_under_limit
     parking_lot_80 = ParkingLot.new(5)
   
     parking_lot_80.park_by_user("user_1")
     parking_lot_80.park_by_user("user_2")
     parking_lot_80.park_by_user("user_3")
     parking_lot_80.park_by_user("user_4")
   
     parking_lot_list = Array.new
   
     parking_lot_list.push(parking_lot_80)
   
     attendant = Attendant.new(parking_lot_list)
     
     attendant.retrieve("user_2")
     assert_equal "user_5", attendant.park("user_5")   
     
   end
end