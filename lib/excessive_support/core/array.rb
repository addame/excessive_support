require 'excessive_support/core/array/include_values'
require 'excessive_support/core/array/transformations'

class Array #:nodoc:
  include ExcessiveSupport::Core::Array::IncludeValues
  include ExcessiveSupport::Core::Array::Transformations
end