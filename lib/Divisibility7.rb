# A Rule of Divisibility by 7
# A number m of the form 10x + y is divisible by 7 if and only if x − 2y is divisible by 7. In other words, subtract twice the last digit from the number formed by the remaining digits. Continue to do this until a number known to be divisible or not by 7 is obtained; you can stop when this number has at most 2 digits because you are supposed to know if a number of at most 2 digits is divisible by 7 or not.
# The original number is divisible by 7 if and only if the last number obtained using this procedure is divisible by 7.
# Examples:
# 1 - m = 371 -> 37 − (2×1) -> 37 − 2 = 35 ; thus, since 35 is divisible by 7, 371 is divisible by 7.
# The number of steps to get the result is 1.
# 2 - m = 1603 -> 160 - (2 x 3) -> 154 -> 15 - 8 = 7 and 7 is divisible by 7.
# 3 - m = 372 -> 37 − (2×2) -> 37 − 4 = 33 ; thus, since 33 is not divisible by 7, 372 is not divisible by 7.

def seven(m)
  count = 0
  number = ( (m/10).to_i ) - (2 * (m % 10) )
  count = 1 if number != 0

  while number > 99
    count += 1
    number = ( (number/10).to_i ) - (2 * (number % 10) )
  end
  return [number, count]
end

# Autres solutions

=begin

def seven(m, step=0)
    m < 100 ? [m,step] : seven(m/10-2*(m%10), step+1)
end

def seven(z, times=0)
  if z < 100
    [z, times]
  else
    x, y = z.divmod 10
    z = x - 2 * y
    seven(z, times + 1)
  end
end

=end
