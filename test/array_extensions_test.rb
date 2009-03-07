require 'test_helper'

class ArrayIncludeValuesTest < ActiveSupport::TestCase
  
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

class ArrayTransformationsTest < ActiveSupport::TestCase
  
  def hash
    { :a => 'A', :b => 'B', :c => 'C' }
  end
  
  def array_with_pairs
    hash.to_a
  end
  
  def array_with_only_keys
    hash.keys
  end
  
  def array_with_multiple_values
    hash.collect{|k,v| [k, v.downcase, v.upcase]}
  end
  
  test "a hash tranformed to array" do
    assert_equal hash, array_with_pairs.to_hash
  end
  
  test "an one-dimensional array" do
    assert_equal({:a => nil, :b => nil, :c => nil}, array_with_only_keys.to_hash)
  end
  
  test "an array with multiple dimensions" do
    assert_equal({:a => ['a','A'], :b => ['b','B'], :c => ['c','C']}, array_with_multiple_values.to_hash)
  end
  
  test "an array with 2 dimensions and more than 2 values" do
    assert_equal({'abc' => ['has',1, 'letter', 'a']}, [['abc','has',1,'letter','a']].to_hash)
  end
  
end