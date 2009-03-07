module ExcessiveSupport #:nodoc:
  module Core #:nodoc:
    module Array #:nodoc:
      # Asks if certain values are present inside an array
      module IncludeValues
        # Does this array include the given values?
        # 
        # Useful for complicated array comparisons
        #
        # An example would be
        #
        # [:up,:right,[:up,:right],:down,:left].include_values?(:up, [:up, :right]) # => true
        # [:up,:right,[:up,:right],:down,:left].include_values?(:up, [:up, :right, [:down, :right]) # => false
        # 
        # This do a values.collect instead of the easiear values.any? because it is desirable to return true if the *values array is empty
        # collect does not perform anything if *values is empty, then returns true
        #
        # things = []
        # shelve = ['books','magazines','dust']
        # shelve.include_values? things # => true, things is empty
        #
        # TODO: Change method name?
        def include_values?(*values)
          values.collect{|value| self.include?(value) }.not_include?(false)
        end
      end
    end
  end
end