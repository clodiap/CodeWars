# Find the 2nd largest integer in array If the array has no 2nd largest integer then return nil. Reject all non integers elements and then find the 2nd largest integer in array
# find_2nd_largest([1,2,3]) => 2
# find_2nd_largest([1,1,1,1,1]) => nil because all elements are same. Largest no. is 1. and there is no 2nd largest no.
# find_2nd_largest([1,'a','2',3,3,4,5,'b']) => 4 as after rejecting non integers array will be [1,3,3,4,5] Largest no. is 5. and 2nd largest is 4.
# Return nil if there is no 2nd largest integer. Take care of big numbers as well

def find_2nd_largest(arr)
  new_arr = []
  arr.each { |i| new_arr << i if i.is_a?(Integer) }
  new_arr.delete(new_arr.max)
  return new_arr.max
end

p find_2nd_largest([1,'a','2',3,3,4,5,'b'])

# autres solutions
=begin

def find_2nd_largest(arr)
  arr.grep(Integer).uniq.sort[-2]
end

def find_2nd_largest(arr)
  arr.uniq.select{|v| v.is_a?(Integer) }.sort.reverse()[1]
end

def find_2nd_largest(arr)
  arr.select { |e| e.is_a?(Integer) }.max(2).uniq[1]
end

=end

# solution pour checker si la string est un nombre ou pas
# def find_2nd_largest(arr)
#   new_arr = []
#   arr.each do |i|
#     if i.to_s == i.to_i.to_s
#       new_arr << i.to_i
#     end
#   end
#   p new_arr
#   new_arr.delete(new_arr.max)
#   return new_arr.max
# end
