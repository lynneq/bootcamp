require 'no_spaces_exception'
require 'car_not_found_exception'

class ParkingLot
   
  def initialize(capacity)
    @parking_lot = Array.new(capacity, :empty)
    @spaces = parking_lot.length
  end
  
  def spaces
    @spaces
  end
  
  def parking_lot
    @parking_lot
  end
  
  def validate_zero_space
    if @spaces == 0 
      raise NoSpacesException
    end      
  end
  
  def park_by_user(user_id) 
    self.validate_zero_space
    
    position = find_car_by_user(user_id)
    
    @parking_lot[position]= user_id
    @spaces -=1
    user_id
  end
  
  def remove_by_user(user_id)
    position = @parking_lot.index(user_id)
    if position == nil
      raise CarNotFoundException
    else      
      @parking_lot[position] = :empty
      @spaces +=1
      user_id
    end
  end
  
  def find_car_by_user(user)    
    position  = @parking_lot.index(user)
    if position == nil
      self.validate_zero_space
      position = @parking_lot.index(:empty)
    end
    position
  end

end