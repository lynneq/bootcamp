class SingletonObject
  private_class_method :new
  @@instance = new
  
  attr_accessor :text
  
  def SingletonObject.instance
    @@instance   # class variable 
  end
end
