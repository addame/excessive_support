module Enumerable
  # Is this enumerable not empty?
  #
  # Useful to check if an array is empty before to do operations with it
  # 
  #   arr = [0,1,1,2,3]
  #   arr.select{|v| v < 0} # will return an empty array
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
  #   diet = ['soylent green', 'eggs', 'salad']
  #   if diet.not_include?('eggs')
  #     puts 'Diet is safe'
  #   end
  def not_include?(element)
    !include?(element)
  end
end