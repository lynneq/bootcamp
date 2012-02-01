$LOAD_PATH << File.dirname(__FILE__)
class Unit
  
  attr_reader:amount
  
  def initialize(amount)
    @amount = amount
  end

end

class Volume < Unit
  
  def self.cup
    Volume.new(48)
  end
  
  def self.oz
    Volume.new(6)    
  end
  
  def self.tbps
    Volume.new(3)
  end
  
  def self.tsp
    Volume.new(1)
  end
  
end

class Length < Unit

  def self.in
    Length.new(1)
  end
   
  def self.ft
    Length.new(12)
  end

end
