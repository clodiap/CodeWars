# Given an array, find the int that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  seq.each { |nb| return nb if seq.count(nb).odd?  }
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# autres solutions :

# def find_it(seq)
#   seq.detect { |n| seq.count(n).odd? }
# end

# def find_it(seq)
#   seq.reduce(:^)
# end

# def find_it(seq)
#   seq.find{|c| seq.count(c).odd? }
# end
