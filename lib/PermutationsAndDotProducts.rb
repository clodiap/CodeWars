# The dot product is usually encountered in linear algebra or scientific computing. It's also called scalar product or inner product sometimes:
#     In mathematics, the dot product, or scalar product (or sometimes inner product in the context of Euclidean space), is an algebraic operation that takes two equal-length sequences of numbers (usually coordinate vectors) and returns a single number.
#     Wikipedia
# In our case, we define the dot product algebraically for two vectors a = [a1, a2, …, an], b = [b1, b2, …, bn] as
# dot a b = a1 * b1 + a2 * b2 + … + an * bn.
# Your task is to find permutations of a and b, such that dot a b is minimal, and return that value. For example, the dot product of [1,2,3] and [4,0,1] is minimal if we switch 0 and 1 in the second vector.
# Examples
# min_dot([1,2,3,4,5], [0,1,1,1,0] ) = 6
# min_dot([1,2,3,4,5], [0,0,1,1,-4]) = -17
# min_dot([1,3,5]    , [4,-2,1]    ) = -3

# Remarks
# If the list or array is empty, minDot should return 0. All arrays or lists will have the same length. Also, for the dynamically typed languages, all inputs will be valid lists or arrays, you don't need to check for undefined, null etc.

# My solution
def min_dot(a, b)
    return 0 if a.empty?
    a.sort!
    b.sort! { |a, b| b <=> a }
    sum = 0
    (0..a.length - 1).each do |ind|
        sum += a[ind] * b[ind]
    end
    sum
end

# Others' solutions

# def min_dot(a, b)
#   a.sort.reverse.zip(b.sort).sum { |a, b| a * b }
# end

# def min_dot(a, b)
#   b.sort.reverse.map.with_index { |element, index| element * a.sort[index] }.sum
# end

# def min_dot(a, b)
#     return dot_product(a.sort!,b.sort!.reverse!)
# end
# def dot_product(a,b)
#   total = 0
#   a.each_with_index do |elementA,index|
#       total += elementA.to_i * b[index].to_i
#   end
#   return total
# end
