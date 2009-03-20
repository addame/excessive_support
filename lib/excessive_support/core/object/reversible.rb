class Object
  # Have this object any non-blank value?
  # To use in clauses like <tt>if @foo.not_blank?</tt> instead of <tt>if !@foo.blank?</tt>
  def not_blank?
    !blank?
  end

  # Is this object not nil?
  # To use in clauses like <tt>if @foo.not_nil?</tt> instead of <tt>if !@foo.nil?</tt>
  def not_nil?
    !nil?
  end
end