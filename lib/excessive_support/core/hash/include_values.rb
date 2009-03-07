module ExcessiveSupport #:nodoc:
  module Core
    module Hash # :nodoc:
      # Asks if certain values are present inside a hash
      module IncludeValues
        # Does this hash include the given values?
        #
        # Useful to compare big hashes (option hashes)
        #
        # An example would be a set of keystrokes for a FPS
        #
        # { :up => 'W', :left => 'A', :right => ['D','E'], :down => 'S' }.include_values?(:up => 'W', :right => ['D','E']) # => true, I have defined the basic movement configuration
        # { :up => 'W', :right => ['D', 'E'] }.include_values?(:down => 'S') # => false, wrong configuration options
        # 
        # This do a hash.collect instead of the easiear hash.any? because it is desirable to return true if the hash given is empty
        #
        # things = {}
        # shelve = { :books => 'horror, fantasy', :magazines => 'lifehack, nature', :dust => false }
        #
        # shelve.include_values?(things) # => true, things is empty
        #
        # TODO: Change method name?
        def include_values?(hash)
          raise ArgumentError.new('The argument passed must be a Hash') unless hash.is_a?(::Hash)
          hash.collect{|key,value| self.include?(key) && self[key] == value }.not_include?(false)
        end
      end
    end
  end
end