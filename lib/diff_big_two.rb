# https://www.codewars.com/kata/difference-between-biggest-2-numbers/train/ruby
# #Difference between biggest 2 numbers
# You have an array of integers. You need to calcurate the difference between 1st biggest number and 2nd biggest number of an array.
#     diff_big_2([10, 5, 2])
# In this case, 1st biggest number is 10 and 2nd biggest number is 5. So, this function return 5, the result of 10 - 5.
# You can assume that the input array must have 2 or more elements.
# The input array has the sort() method disabled, so you will have to solve it in another way.

# with sort() method :
# def diff_big_2(arr)
#   arr.sort! { |a,b| b <=> a }.first(2).reduce(:-)
# end

def diff_big_2(arr)
  arr.max(2).reduce(:-)
end

# other's solutions :

# def diff_big_2(arr)
#   arr.delete_at(arr.index(arr.max)) - arr.max
# end

# def diff_big_2(arr)
#   x, y = arr.max(2)
#   x - y
# end


