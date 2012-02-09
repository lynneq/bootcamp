require 'observer'

require 'parking_lot'
require 'no_parking_lot_available_exception'

require 'bigdecimal'

class Attendant
    
  def initialize(parking_lot_list)
    @parking_lot_list = parking_lot_list
    @limit = 0.8
    
    @available_parking_lots = Array.new    
    
    @parking_lot_list.each do |parking_lot|
      parking_lot.add_observer(self)
      
      update_available_parking_lots(parking_lot)
    end
  end
  
  def park(user_id)      
    if @available_parking_lots.length == 0
      raise NoParkingLotAvailaleException
    end
    @available_parking_lots[0].park_by_user(user_id) #already in the available list
  end

  def retrieve(user_id) 
    @parking_lot_list.each do |parking_lot|
      begin
        return parking_lot.remove_by_user(user_id) #use "return" to break the iteration, if throw exception, then go the rescue part.
      rescue CarNotFoundException   #do nothing for the exception            
      end
    end
    raise CarNotFoundException # nothing happened in the iteration
  end
  
  def update_available_parking_lots(parking_lot)
    if BigDecimal(parking_lot.spaces.to_s)/BigDecimal(parking_lot.length.to_s)> BigDecimal("1") - BigDecimal(@limit.to_s)
      @available_parking_lots.push(parking_lot)
    else
        @available_parking_lots.delete(parking_lot)
    end    
  end
  
  def update(parking_lot)
    update_available_parking_lots(parking_lot) 
  end
  
end
