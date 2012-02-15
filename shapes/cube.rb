$LOAD_PATH << File.dirname(__FILE__)

require 'square'
class Cube
  
  def initialize(square)
    @square = square
  end
  
  def area
     6 * @square.area    
  end 
end