# You are given array of integers, your task will be to count all pairs in that array and return their count.

# Notes:

# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
# Examples
# [1, 2, 5, 6, 5, 2]  -->  2
# ...because there are 2 pairs: 2 and 5

# [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
# ...because there are 4 pairs: 2, 20, 6 and 2 (again)

def pairs(arr)
  count = {}
  arr.each do |nb|
    item = arr.count(nb)
    count[nb] = item / 2 if item >= 2
  end
  count.values.sum
end

# Others' solutions

# def pairs(arr)
#   arr.group_by { |x| x }.sum { |x, y| y.size / 2 }
# end

# def pairs(arr)
#   arr.inject(Hash.new(0)) { |res, el| res[el] += 1; res }.values.map { |v| v >= 2 ? v / 2 : 0 }.sum
# end

# def pairs(arr)
#   arr.each_with_object(Hash.new(0)) { |n, counter| counter[n] += 1 } .values.map { |v| v/2 } .sum
# end
