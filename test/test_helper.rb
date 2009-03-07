$:.unshift "#{File.dirname(__FILE__)}/../lib"

require 'active_support'
require 'active_support/test_case'
require 'redgreen'
require 'excessive_support'

class ActiveSupport::TestCase
  
  # This should be in this plugin too
  def assert_false(expression)
    assert_equal false, expression
  end
  
end