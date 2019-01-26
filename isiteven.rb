=begin
In this Kata we are passing a number (n) into a function.
Your code will determine if the number passed is even (or not).
The function needs to return either a true or false.
Numbers may be positive or negative, integers or floats.
Floats are considered UNeven for this kata.
=end

def test_even(n)
  if n % 2 == 0 && n.class == Integer
    return true
  elsif n.class == Float
    return false
  else
    return false
  end
end

p test_even(8.6)

### autres solutions
=begin
def test_even(n)
  n % 2 == 0 ? true : false
end

def test_even(n)
  n.is_a?(Integer) and n.even?
end
=end
