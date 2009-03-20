class Object
  # If self is not nil or false, it executes the given block, 
  # otherwise return self
  # 
  # Useful to remove large if chains or to ensure a variable exists 
  # before doing something
  #
  #   @result = SomeOperation
  #   @result.and_then do
  #     @result.foo = 'bar'
  #     @result.bar = 'foo'
  #   end
  #   # The block it's exectued only if @result is not nil or false
  # 
  # This method also works with procs in both sides
  def and_then
    ((self.is_a?(Proc)) ? self.call : self) && yield
  end
  
  # If self is nil or false, it executes the given block, otherwise return self
  #
  # Useful to remove large if/else chains or 
  # for encapsulate variable initializactions
  #
  #   def something
  #     @something.otherwise do
  #       @something = SomeClass.new
  #       @something.foo = 'bar'
  #       @something.bar = 'foo'
  #       @something
  #     end
  #   end
  #   # The block passed to otherwise it is only exectued the first time 
  #   # something method is called
  #
  # This method also works with procs in both sides
  def otherwise
    ((self.is_a?(Proc)) ? self.call : self) || yield
  end
end