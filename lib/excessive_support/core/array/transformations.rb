module ExcessiveSupport #:nodoc:
  module Core #:nodoc:
    module Array #:nodoc:
      # Array transormations
      #
      # TODO: Is this really neede? (too excessive perhaps)
      module Transformations
        # TODO: Test this function with no pair-value arrays
        def to_hash
          self.inject({}){ |memo, pair| memo.update(pair.first => pair.last) }
        end
      end
    end
  end
end