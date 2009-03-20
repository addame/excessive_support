require 'test_helper'

class ObjectReversible < ActiveSupport::TestCase
  
  test "object.not_nil?" do
    assert "".not_nil?
    assert 0.not_nil?
    assert [1].not_nil?
    assert false.not_nil?
    
    assert_false nil.not_nil?
  end
  
  test "object.not_blank?" do
    assert [1,2,3].not_blank?
    assert "foo".not_blank?
    assert ({:a => 'a'}).not_blank?
    
    assert_false [].not_blank?
    assert_false "".not_blank?
    assert_false ({}).not_blank?
  end
  
end

class ObjectComparableTest < ActiveSupport::TestCase
  
  test "and_then performs the given block when first value is true" do
    performed = false
    value = 'whatever'
    value.and_then do
      performed = true
    end
    
    assert performed
  end
  
  test "and_then does not peform given blck when first value is false" do
    performed = false
    value = nil
    value.and_then do
      performed = true
    end
    
    assert_false performed
  end
  
  test "and_then works with blocks in both sides" do
    left_block_performed = false
    right_block_performed = false
    lambda do
      left_block_performed = true
      true # to clarify that is expected true return here
    end.and_then do
      right_block_performed = true
    end
    
    assert left_block_performed
    assert right_block_performed
  end
  
  test "otherwise performs the given block when first value is false" do
    performed = false
    value = false
    value.otherwise do
      performed = true
    end
    
    assert performed
  end
  
  test "otherwise does not performs the given block when first value is true" do
    performed = false
    value = true
    value.otherwise do
      performed = true
    end
    
    assert_false performed
  end
  
  test "otherwise works with blocks in both sides" do
    left_block_performed = false
    right_block_performed = false
    lambda do
      left_block_performed = true
      false # To clarify that is expected false return here
    end.otherwise do
      right_block_performed = true
    end
    
    assert left_block_performed
    assert right_block_performed
  end
  
end