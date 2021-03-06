=begin
In this kata you will create a function that takes a list of non-negative integers and strings and returns a new list with the strings filtered out.
Example
filter_list([1,2,'a','b']) == [1,2]
filter_list([1,'a','b',0,15]) == [1,0,15]
filter_list([1,2,'aasf','1','123',123]) == [1,2,123]
=end
def filter_list(l)
  l.select! {|i| i.is_a? Integer }
end

array = [1,'a','b',0,15]
puts filter_list(array)


# autres solutions :
=begin
def filter_list(l)
  l.reject { |x| x.is_a? String }
end

def filter_list(list)
  list.keep_if { |i| i.is_a? Integer }
end

def filter_list(l)
  # return a new list with the strings filtered out
  l.select{ |w| w.is_a? Numeric }
end
=end
