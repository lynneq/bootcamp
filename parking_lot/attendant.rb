require 'parking_lot'
require 'no_spaces_exception'

class Attendant
    
  def initialize(parking_lot_list)
    @parking_lot_list = parking_lot_list
  end

  def park(user_id)
    found = false
    @parking_lot_list.each do |parking_lot|
      if parking_lot.spaces != 0
        parking_lot.park_by_user(user_id)
        found = true
        break
      end
    end
  
    if not found
      raise NoSpacesException
    end
    user_id   
  end

end