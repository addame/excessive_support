module ExcessiveSupport #:nodoc:
  module Core #:nodoc:
    module Array #:nodoc:
      # Asks if certain values are present inside an array
      # TODO: Make a reverse method of include_values? (not_include_values?)
      module IncludeValues
        # Does this array include the given values?
        # 
        # Useful for complicated array comparisons
        #
        # An example might be
        #
        #   [:up,:right,[:up,:right],:down,:left].include_values?(:up, [:up, :right]) # => true
        #   [:up,:right,[:up,:right],:down,:left].include_values?(:up, [:up, :right, [:down, :right]) # => false
        # 
        # This method performs an array.collect instead of the easiear array.any? because
        # it is desirable to return true if the *values array is empty
        #
        #   things = []
        #   shelve = ['books','magazines','dust']
        #   shelve.include_values? things # => true, things is empty
        #
        def include_values?(*values)
          values.collect{|value| self.include?(value) }.not_include?(false)
        end
      end
    end
  end
end