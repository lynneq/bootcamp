$LOAD_PATH << File.dirname(__FILE__)
class Unit
  
  attr_reader:base_amount
  
  def initialize(amount)
    @base_amount = amount
  end
  
  def self.base
    Unit.new(1)
  end
  
  def calculate_total_amount(amount)
    @base_amount * amount
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

  def self.yd
    Length.new(36)
  end

end

class Temperature < Unit
  
  def initialize(unit_type)
    @unit_type = unit_type
  end
  
  def self.c
    Temperature.new(:c)
  end
  
  def self.f
    Temperature.new(:f)
  end

  def calculate_total_amount(amount)
    if @unit_type == :c
      amount.to_f 
    else
      (amount-32) * (0.5/0.9)  
    end     
  end
  
end
