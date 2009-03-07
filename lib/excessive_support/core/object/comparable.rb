class Object
  # If self is not nil or false, it executes the given block, otherwise return self
  # 
  # Useful to remove large if chains
  def and_then
    self && yield
  end
  alias_method :and, :and_then
  
  # If self is nil or false, it executes the given block, otherwise return self
  #
  # Useful to remove large if/else chains
  def otherwise
    self || yield
  end
  alias_method :or, :otherwise
end