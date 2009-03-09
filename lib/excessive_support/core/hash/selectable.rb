module ExcessiveSupport #:nodoc:
  module Core #:nodoc:
    module Hash #:nodoc:
      # Various methods to select certain values from a hash
      #
      # TODO: implement ability to pass a block as argument
      module Selectable

        # The hash without certain values
        # !! Already exists in ActiveSupport
        # def except(*exclusions)
        #   self.reject { |key, value| exclusions.include? key.to_sym }.to_hash
        # end
        
        # The hash with only certain values
        # !! Already exists in ActiveSupport (named slice)
        # def only(*selections)
        #   self.select { |key, value| selections.include? key.to_sym }.to_hash
        # end
        
        
        def self.included(base)
          base.send :alias_method, :only, :slice
          base.send :alias_method, :only!, :slice!
        end
        
        # The hash with certain values overrided
        def with(overrides = {})
          self.merge overrides
        end
        
        def with!(overrides = {})
          self.merge! overrides
        end
        
      end
    end
  end
end