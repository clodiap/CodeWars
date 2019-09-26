# https://www.codewars.com/kata/58a66c208b88b2de660000c3

# Task
# You are given an array of positive ints where every element appears three times, except one that appears only once (let's call it x) and one that appears only twice (let's call it y).
# Your task is to find x * x * y.
# Example
# For arr=[1, 1, 1, 2, 2, 3], the result should be 18
# 3 x 3 x 2 = 18
# For arr=[6, 5, 4, 100, 6, 5, 4, 100, 6, 5, 4, 200], the result should be 4000000
# 200 x 200 x 100 = 4000000

def missing_values(a)
  hash_values = {}
  a.each {|nb| hash_values[nb] = a.count(nb) }
  hash_values.delete_if {|nb, count| count == 3 }
  once, twice = 0, 0
  hash_values.each do |nb, count|
    once = nb if count == 1
    twice = nb if count == 2
  end
  once * once * twice
end

# Other solutions :

# def missing_values(a)
#   x,y = nil
#   a.each do |n|
#     x = n if a.count(n) == 1
#     y = n if a.count(n) == 2
#   end
#   x.abs2 * y
# end

# def missing_values(a)
#   a.find{|x| a.count(x) == 2} * a.find{|x| a.count(x) == 1}**2
# end

# def missing_values(a)
#   x, y = a.group_by(&:itself).values.sort_by(&:length).map(&:first)
#   x * x * y
# end
