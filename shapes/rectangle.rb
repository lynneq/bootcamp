$LOAD_PATH << File.dirname(__FILE__)

class Rectangle

def initialize(width, length)
  @width = width
  @length = length
end

def area
  @width * @length
end

def perimeter
  (@width*2) + (@length*2)
end

end
