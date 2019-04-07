# Prefill an array

# Create the function prefill that returns an array of n elements that all have the same value v. See if you can do this without using a loop.
# You have to validate input:
#     v can be anything (primitive or otherwise)
#     if v is ommited, fill the array with undefined
#     if n is 0, return an empty array
#     if n is anything other than an integer or integer-formatted string (e.g. '123') that is >=0, throw a TypeError

# When throwing a TypeError, the message should be n is invalid, where you replace n for the actual value passed to the function.

# Code Examples
#     prefill(3,1) --> [1,1,1]
#     prefill(2,"abc") --> ['abc','abc']
#     prefill("1", 1) --> [1]
#     prefill(3, prefill(2,'2d'))
#       --> [['2d','2d'],['2d','2d'],['2d','2d']]
#     prefill("xyz", 1)
#       --> throws TypeError with message "xyz is invalid"


def prefill(n,v="undefined")
  arry = []
  if [true,false].include?(n)
    raise TypeError, "#{n} is invalid"
  elsif n.to_f.to_s == n.to_s || n.to_i.to_s == n.to_s
    n.to_i.times { arry << v }
    return arry
  else
    # return "#{n} is invalid"
    raise TypeError, "#{n} is invalid"
  end
end

p prefill(true,1)
p prefill(2,"abc")
p prefill("1", 1)
p prefill(3, prefill(2,'2d'))
p prefill("xyz", 1)
p prefill(0, 1)
p prefill(3)

# autres solutions

# def prefill(n, v = nil)
#   Array.new(Integer(n)) { v }
# rescue
#   raise TypeError.new "#{n} is invalid"
# end

# def prefill(n,v = "undefined")
#   unless String(n) =~ /^\d+$/
#     raise TypeError, "#{n} is invalid"
#   end
#   [v] * Integer(n)
# end

# def prefill(n = 0,v = nil)
#   if (n.is_a?(String) && n == n.to_i.to_s) || (n.is_a?(Integer) && n >= 0)
#     return Array.new(n.to_i, v)
#   end
#   raise TypeError, "#{n} is invalid"
# end
