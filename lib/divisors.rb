# Find the number of divisors of a positive integer n.
# Random tests go up to n = 500000.
# Examples
# divisors(4) -> 3 -- 1, 2, 4
# divisors(5) -> 2 -- 1, 5
# divisors(12) -> 6 -- 1, 2, 3, 4, 6, 12
# divisors(30) -> 8 -- 1, 2, 3, 5, 6, 10, 15, 30

def divisors(n)
  count = 0
  (1..n).each { |div| count += 1 if n % div == 0 }
  return count
end

puts divisors(30)

# autres solutions

=begin

def divisors(n)
  (1..n).count { |d| n % d == 0 }
end

def divisors(n) (1..n).select {|a| n%a==0}.length end

=end
