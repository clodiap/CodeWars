# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.

#     the array can't be empty
#     only non-negative, single digit integers are allowed

# Return nil (or your language's equivalent) for invalid inputs.
# Examples

# For example the array [2, 3, 9] equals 239, adding one would return the array [2, 4, 0].

# [4, 3, 2, 5] would return [4, 3, 2, 6]


# My solution
def up_array(arr)
  return nil if arr.length < 1
  condition = true
  arr.each { |i|  condition = false if ( (i < 0) || (i > 9) || (i.class == Float) ) }
  return (arr.join.to_i + 1).to_s.chars.map {|i| i.to_i} if condition == true
end

# Others' solution

# def up_array(arr)
#   return nil if arr.empty? || arr.any? { |x| x < 0 || x > 9 }
#   arr.join.next.chars.map(&:to_i)
# end

# def up_array(arr)
#   (arr.join.to_i + 1).to_s.split(//).map(&:to_i) if arr.all? { |x| x.between?(0,9) } and !arr.empty?
# end
