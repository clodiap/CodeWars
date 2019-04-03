# String ends with?
# Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).
# Examples:
# solution('abc', 'bc') # returns true
# solution('abc', 'd') # returns false

def solution(str, ending)
  return str[-ending.length..-1] == ending ? true : false
end

p solution('abc', 'd')

# autres solutions

=begin

def solution(str, ending)
  str.end_with?(ending)
end

def solution(str, ending)
/#{ending}\z/.match(str) ? true : false
end

=end
