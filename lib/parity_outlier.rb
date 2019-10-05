# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# my solutions

def find_outlier(integers)
  arrays = integers.partition { |i| i.even? }
  arrays.find(&:one?).first
end

# def find_outlier(integers)
#   even_array, odd_array = integers.partition { |i| i.even? }
#   arrays[0].count == 1 ? arrays[0][0] : arrays[1][0]
# end

# def find_outlier(integers)
#   even_int, odd_int = [], []
#   integers.each { |i| i.even? ? even_int << i : odd_int << i }
#   even_int.count == 1 ? even_int.first : odd_int.first
# end



# others' solutions

# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end

# def find_outlier(integers)
#   integers.count(&:even?) > 1 ? integers.find(&:odd?) : integers.find(&:even?)
# end

# def find_outlier(integers)
#   odd, even = integers.partition(&:odd?)
#   odd.length > 1 ? even[0] : odd[0]
# end
