require 'test_helper'

class HashExtensionsTest < ActiveSupport::TestCase
  test "no error" do
    hash = { :a => 1, :b => 2 , :c => 3}
    assert_equal hash.slice(:b), hash.only(:b)
    hash.only!(:a,:b)
    assert_equal({ :a => 1, :b => 2}, hash)
    assert_equal({:a => 2, :b => 2}, hash.with(:a => 2))
    hash.with!(:b => 3)
    assert_equal({ :a => 1, :b => 3}, hash)
  end
end