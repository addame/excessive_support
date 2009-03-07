require 'excessive_support/core/hash/include_values'
require 'excessive_support/core/hash/selectable'

class Hash #:nodoc:
  include ExcessiveSupport::Core::Hash::IncludeValues
  include ExcessiveSupport::Core::Hash::Selectable
end