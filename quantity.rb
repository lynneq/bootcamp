$LOAD_PATH << File.dirname(__FILE__)

require 'unit'

class Quantity
  
  attr_reader :amount
  
  def initialize(amount, unit)
    @amount = amount*unit.amount       
  end

  def == (other)
    @amount == other.amount 
  end
  
end
