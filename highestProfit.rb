# The highest profit wins!
# Ben has a very simple idea to make some profit: he buys something and sells it again. Of course, this wouldn't give him any profit at all if he was simply to buy and sell it at the same price. Instead, he's going to buy it for the lowest possible price and sell it at the highest.
# Task
# Write a function that returns both the minimum and maximum number of the given list/array.
# Examples
# min_max([1,2,3,4,5])   == [1,5]
# min_max([2334454,5])   == [5, 2334454]
# min_max([1])           == [1, 1]
# Remarks
# All arrays or lists will always have at least one element, so you don't need to check the length. Also, your function will always get an array or a list, you don't have to check for null, undefined or similar.


def min_max(myArray)
  min = nil
  max = nil
  myArray.each do |item|
    if min == nil && max == nil
      min = item
      max = item
    elsif item < min
      min = item
    elsif item > max
      max = item
    end
  end
  return [min, max]
end

p min_max([1,2,3,4,5])

# autre solutions intéressantes

=begin

def min_max(lst)
  return [lst.min, lst.max]
end

def min_max(lst)
  min = max = lst[0]
  lst.each do |i|
    min = i if i < min
    max = i if i > max
  end
  [min, max]
end

def min_max(lst)
  return lst.minmax
end

=end
