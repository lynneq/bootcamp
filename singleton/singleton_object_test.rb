$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'singleton_object'
require 'singleton_object_module'

class SingletonObjectTest < Test::Unit::TestCase
  def test_singleton_create_one_object_when_calling_twice
    so1 = SingletonObject.instance
    so1.text = 'Test'
    so2 = SingletonObject.instance
    assert_equal 'Test', so2.text
    assert_equal true, so1.equal?(so2)
  end

  def test_singleton_module_create_one_object_when_calling_twice
    so1 = SingletonObjectModule.instance
    so2 = SingletonObjectModule.instance
    assert_equal true, so1.equal?(so2)
  end
end