# // Give you a number array numbers and a number c.
# // Find out a pair of numbers(we called them number a and number b) from the array numbers, let a*b=c, result format is an array [a,b]
# // The array numbers is a sorted array, value range: -100...100
# // The result will be the first pair of numbers, for example,findAB([1,2,3,4,5,6],6) should return [1,6], instead of [2,3]
# // Please see more example in testcases.

def find_a_b(array, number)
  # state_result = false
  result = nil
  array.each_with_index do |i,j|
    (j+1..array.length).each do |k|
      if array[k] != nil && result == nil
        result = [i,array[k]] if i * array[k] == number
      end
    end
  end
  return result
end

p find_a_b([1,2,3,4,5,6],6)
p find_a_b([1,2,3],7)
p find_a_b([1,2,3],6)
p find_a_b([0,0,2],4)

# autres solutions

# def find_a_b(numbers, c)
#   numbers.combination(2).detect { |a, b| a * b == c }
# end

# def find_a_b(numbers,c)
#   numbers.permutation(2).find {|x| x.inject(:*) == c}
# end
