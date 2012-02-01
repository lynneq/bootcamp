$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'chance'

class Test_chance < Test::Unit::TestCase 

  def test_happening
    puts `ruby -v`
    chance = Chance.new(1,6)
    assert_equal 1.0/6.0, chance.happening
  end

  def test_not_happening
    chance = Chance.new(1, 6)
    assert_equal 5.0/6.0, chance.notHappening
  end

end