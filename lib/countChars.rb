# The main idea is to count all the occuring characters(UTF-8) in string. If you have string like this aba then the result should be { 'a': 2, 'b': 1 }
# What if the string is empty ? Then the result should be empty object literal { }

def count_chars(s)
  my_hash = {}
  s.each_char { |char| my_hash[char] = s.count(char) }
  return my_hash
end

p count_chars("aba")

# autres solutions

=begin

def count_chars(s)
  count = Hash.new(0)
  s.split("").each do |x|
    count[x] += 1
  end
  count
end

def count_chars(s)
  s.chars.uniq.each_with_object({}) { |c, h| h[c] = s.count(c) }
end

def count_chars(s)
  s.chars.group_by { |x| x }.map { |k,v| [k, v.size]}.to_h
end

=end
