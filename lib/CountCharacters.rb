# Ordered Count of Characters

# Count the number of occurrences of each character and return it as a list of tuples in order of appearance.
# ordered_count("abracadabra") == [['a', 5], ['b', 2], ['r', 2], ['c', 1], ['d', 1]]

def ordered_count(str)
  arry = []
  str.each_char { |char| arry << [char , str.count(char)] }
  return arry.uniq
end

# autres solutions :
=begin

def ordered_count(str)
  str.chars.uniq.map{|i| [i, str.count(i)]}
end

def ordered_count(str)
  str.chars.each_with_object(Hash.new(0)) { |c, hash| hash[c]+=1 }.to_a
end

def ordered_count(str)
  str.chars.uniq.map { |c| [c, str.count(c)] }
end

=end
