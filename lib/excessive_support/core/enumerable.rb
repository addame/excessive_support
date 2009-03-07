module Enumerable #:nodoc:
  # Is this enumerable not empty?
  #
  # Useful while working over an array an is necessary to check if it is empty
  # 
  #   arr = [0,1,1,2,3]
  #   arr.select{|v| v < 0} # negative values only
  #   if arr.not_empty? # more readable than !arr.empty?
  #     puts "You have negative values"
  #   end
  def not_empty?
    !empty?
  end
  
  # Does this enumerable include this element?
  #
  # Useful to assure that a certaion collection do not contains a certain value
  #
  #   # A person alergic to eggs should not eat eggs
  #   # given a collection of meals and food, collect the food and check there are not <tt>eggs</tt> is today's diet
  #   {:breakfast => 'milk', :lunch => 'eggs', :dinner => 'salad'}.collect{|k,v| v }.not_include?('eggs')
  def not_include?(element)
    !include?(element)
  end
end