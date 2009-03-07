require 'test_helper'

class ArrayExtensionsTest < ActiveSupport::TestCase
  def fib
    [0,1,1,2,3,[5,8]]
  end
  test "include values is true when an empty array is passed as arguments" do
    assert fib.include_values?(*[])
  end
  test "include values is true when nothing is passed" do
    assert fib.include_values?
  end
  test "include values is false when none of the values are present" do
    assert_false fib.include_values?(7,9,23)
  end
  test "include values is false when some values are not present" do
    assert_false fib.include_values?(1,3,4,23)
  end
  test "include values is true when all values are preset" do
    assert fib.include_values?(0,1,2)
  end
  test "include values is true when compares objects" do
    assert fib.include_values?(1,[5,8])
  end
end