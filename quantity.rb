$LOAD_PATH << File.dirname(__FILE__)

require 'unit'

class Quantity
  
  attr_reader :amount
  attr_reader :unit
  
  def initialize(amount, unit)
    @unit = unit
    @amount = total_amount(amount)   
  end

  def total_amount(amount)
    @unit.calculate_total_amount(amount)
  end
  
  def == (other)
    @amount == other.amount 
  end
  
  def + (other)
    @amount += other.amount 
    raise "RuntimeErrorMSG" unless @unit.class == other.unit.class
    Quantity.new(@amount, Unit.base)   
  end 
  
end
