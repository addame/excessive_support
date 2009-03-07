module ExcessiveSupport #:nodoc:
  module Core #:nodoc:
    module Hash #:nodoc:
      # Various methods to select certain values from a hash
      #
      # TODO: make some elements destructive
      # TODO: implement ability to pass a block as argument
      module Selectable

        # The hash without certain values
        def except(*exclusions)
          self.reject { |key, value| exclusions.include? key.to_sym }.to_hash
        end
        
        # The hash with only certain values
        def only(*selections)
          self.select { |key, value| selections.include? key.to_sym }.to_hash
        end

        # The hash with certain values overrided
        def with(overrides = {})
          self.merge overrides
        end
        
      end
    end
  end
end