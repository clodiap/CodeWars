# Given an array of integers of any length, return an array that has 1 added to the value represented by the array.

#     the array can't be empty
#     only non-negative, single digit integers are allowed

# Return nil (or your language's equivalent) for invalid inputs.
# Examples

# For example the array [2, 3, 9] equals 239, adding one would return the array [2, 4, 0].

# [4, 3, 2, 5] would return [4, 3, 2, 6]

def up_array(arr)
  condition = true
  arr.each do  |i|
    if i < 0 || i > 9 || i.class == Float
      condition = false
    end
  end
  return (arr.join.to_i + 1).to_s.chars.map {|i| i.to_i} if condition == true
end

p up_array([0])
