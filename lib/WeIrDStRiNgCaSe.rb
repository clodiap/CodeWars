=begin
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').
Examples:

weirdcase( "String" )#=> returns "StRiNg"
weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"
=end

def weirdcase(string)
  words = string.split(" ")
  words2 = []
  for word in words
    words2 << word.chars.map.with_index {|x,i| i % 2 == 0 ? x.upcase : x.downcase}.join
  end
  return words2.join(" ")
end

puts weirdcase("abracadabra et totos")

#### autres solutions
=begin
def weirdcase(string)
  string.split(' ').map do |word|
    word.split('').each_with_index.map do |char, i|
      i % 2 == 0 ? char.upcase : char.downcase
    end.join('')
  end.join(' ')
end

def weirdcase string
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end

def even_upcase word
  word.split(//).map.with_index { |v,k| k.even? ? v.upcase : v  }.join()
end
def weirdcase string
  string.split(" ").map { |v|  even_upcase(v) }.join(" ")
end

def weirdcase string
  string.split.map { |word| word.scan(/..?/).map(&:capitalize).join }.join " "
end

def weirdcase(string)
  i=1
  string.chars.map{ |x| i+=1;i=1 if x==" ";i%2==0 ? x.upcase : x.downcase}.join
end

def weirdcase string
  string.split(' ').map { |sub_str| sub_str.split('').each_with_index { |chr, i| i.even? ? chr.upcase! : chr.downcase! }.join }.join(' ')
end
=end
