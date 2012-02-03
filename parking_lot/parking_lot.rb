class ParkingLot
 
  attr_reader :parking_lot
  
  def initialize(capacity)
    @parking_lot = Array.new(capacity, :empty)
    @spaces = parking_lot.length
  end

  def add(user) 
    position = find_car_by_user(user)
    if position == nil 
      "There is no more space in this parking lot!"
    else
      @parking_lot[position]= user
      @parking_lot
    end
  end
  
  def remove(user)
    position = @parking_lot.index(user)
    if position == nil
      "Your car is not here!"
    else
      @parking_lot[position] = :empty
      @parking_lot        
    end
  end
  
  def find_car_by_user(user)
    position  = @parking_lot.index(user)
    if position == nil
      position = @parking_lot.index(:empty)
    end
    position
  end
  
end