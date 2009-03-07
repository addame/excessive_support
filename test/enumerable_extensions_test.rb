require 'test_helper'

class EnumerableNotEmptyTest < ActiveSupport::TestCase
  
  test "responds to not_empty?" do
    assert_respond_to({}, :not_empty?)
    assert_respond_to([], :not_empty?)
  end
  
  test "has values then returns true" do
    assert({:key => 'value'}.not_empty?)
    assert(['value'].not_empty?)
  end
  
  test "is empty then return false" do
    assert_false({}.not_empty?)
    assert_false([].not_empty?)
  end
  
end

class EnumerableNotIncludeTest < ActiveSupport::TestCase
  
  test "responds to not_include?" do
    assert_respond_to({}, :not_include?)
    assert_respond_to([], :not_include?)
  end
  
  test "value is not present then returns true" do
    assert({:subject => 'a person'}.not_include?(:verb))
    assert(['a person'].not_include?('sleeps'))
  end
  
  test "value is present then returns false" do
    assert_false({:subject => 'a person', :verb => 'sleep'}.not_include?(:verb))
    assert_false(['a person', 'sleeps'].not_include?('sleeps'))
  end
  
end