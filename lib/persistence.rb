=begin
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.
For example:
 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit
 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2
 persistence(4) # returns 0, because 4 is already a one-digit number
=end

def persistence(n)
  count = 0
  while n > 9
    n = n.digits.inject(:*) # inject = multiplie chaque membre du tableau, digits = transforme en tableau
    count += 1
  end
  return count
end
puts persistence(4)

### autre solution
=begin
def persistence(n)
  k = 0
   while n > 9 do
    n = n.to_s.split(//).map{|x| x.to_i}.inject(:*)
    k+=1
   end
  k
end
=end
