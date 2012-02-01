$LOAD_PATH << File.dirname(__FILE__)

require 'rectangle'
class Square < Rectangle
  
def initialize(side=1)
  super(side, side)
end

end