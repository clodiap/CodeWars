=begin
Build Tower by the following given argument:
number of floors (integer and always greater than 0).
Tower block is represented as *

for example, a tower of 3 floors looks like below

[
  '  *  ',
  ' *** ',
  '*****'
]

and a tower of 6 floors looks like below

[
  '     *     ',
  '    ***    ',
  '   *****   ',
  '  *******  ',
  ' ********* ',
  '***********'
]
=end
def tower(n_floors)
  array = Array.new(n_floors, "*")
  1.upto(n_floors) do |x|
    array[x-1] = (" " * (n_floors - x)) + ("*" * (x*2-1)) + (" " * (n_floors - x))
  end
  return array
end

#### autres solutions
=begin
def towerBuilder(n)
  n.times.map{|x|(?**(x*2+1)).center n*2-1}
end

def towerBuilder(n)
  (1..n).map do |i|
    space = ' ' * (n - i)
    stars = '*' * (i * 2 - 1)
    space + stars + space
  end
end
=end
