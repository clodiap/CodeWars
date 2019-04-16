# Count the number of Duplicates

# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.
# Example

# "abcde" -> 0 # no characters repeats more than once
# "aabbcde" -> 2 # 'a' and 'b'
# "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# "indivisibility" -> 1 # 'i' occurs six times
# "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
# "aA11" -> 2 # 'a' and '1'
# "ABBA" -> 2 # 'A' and 'B' each occur twice

def duplicate_count(text)
  my_hash = {}
  result = 0
  text = text.downcase
  text.each_char { |char| my_hash[char] = text.count(char)}
  p my_hash
  my_hash.each_value { |value| result += 1 if value > 1 }
  return result
end

p duplicate_count("abcdeaB")

# autres solutions

# def duplicate_count(text)
#   ('a'..'z').count { |c| text.downcase.count(c) > 1 }
# end

# def duplicate_count(str)
#     str.downcase.each_char.find_all { |c| str.downcase.count(c) > 1 }.uniq.size
# end

# def duplicate_count text
#   text.upcase.chars.uniq.count{|c| text.upcase.count(c) > 1 }
# end
