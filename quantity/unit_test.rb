$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'unit'
class UnitTest < Test::Unit::TestCase 

    def test_48cup
      assert_equal 48, Volume.cup.amount
    end
    def test_6oz
      assert_equal 6, Volume.oz.amount
    end
    def test_3tbps
      assert_equal 3, Volume.tbps.amount
    end
    def test_1tps
      assert_equal 1, Volume.tsp.amount
    end
    
end
 