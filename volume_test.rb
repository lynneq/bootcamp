$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'unit'

class VolumeTest < Test::Unit::TestCase 
  
    def test_should_verify_volumn_unit_base_amount
      assert_equal 48, Volume.cup.base_amount
      assert_equal 6, Volume.oz.base_amount
      assert_equal 3, Volume.tbps.base_amount
      assert_equal 1, Volume.tsp.base_amount
    end
    
end
