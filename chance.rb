class Chance

  def initialize(occurrance, frequency)
    @occurrance = occurrance
    @frequency = frequency
  end

  def happening
    @occurrance.to_f/@frequency.to_f
  end

  def notHappening
    1 - (@occurrance.to_f/@frequency.to_f)
  end

end