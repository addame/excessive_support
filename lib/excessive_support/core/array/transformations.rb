module ExcessiveSupport #:nodoc:
  module Core #:nodoc:
    module Array #:nodoc:
      # Array transormations
      #
      # TODO: Is this really needed? (too excessive perhaps)
      module Transformations
        # Given an array, it transform it to a hash
        #
        # Useful when making enumerable methods like select, any?, etc, over a hash.
        # This functions will return a 2 dimensional array which can be easily retransformed to a hash with this funciton.
        #
        # There're 3 general types of transformation
        #
        # 1. One dimensional array
        #
        #   [:a, :b, :c].to_hash # => {:a => nil, :b => nil, :c => nil}
        #
        # 2. Two dimensional array
        #
        #   [[:a,'A'], [:b,'B'], [:c,'C']].to_hash # => {:a => 'A',:b => 'B',:c => 'C'}
        #
        # 3. Multidimensional array. The first element of each array is always the key
        #
        #   [[:a, ['a','A']].to_hash # => {:a => ['a','A']}
        #   [[:a, 1, 'letter', 'a']].to_hash # => {:a => [1,'letter','a']}
        def to_hash
          self.inject({}) do |memo, pair|
            if pair.is_a?(::Array)
              key = pair.shift
              value = case pair.size
              when 0 then nil
              when 1 then pair.to_s
              else pair; end
              memo.update(key => value)  
            else
              memo.update(pair => nil)
            end
          end
        end
      end
    end
  end
end