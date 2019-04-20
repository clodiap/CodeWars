# Duplicate Encoder

# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples
# "din"      =>  "((("
# "recede"   =>  "()()()"
# "Success"  =>  ")())())"
# "(( @"     =>  "))(("

def duplicate_encoder(string)
  string_array = string.split("")
  string_result = []
  string_array.each do |letter|
    count_letter = string_array.count(letter.downcase)
    if count_letter > 1
      string_result << ")"
    else
      string_result << "("
    end
  end
  return string_result.join
end


# autres solutions intéressantes
=begin

def duplicate_encode(word)
  word
      .downcase
      .chars
      .map { |char| word.downcase.count(char) > 1 ? letter = ')' : letter = '(' }
      .join
end

def duplicate_encode(word)
  word.downcase.chars.map {|x| word.downcase.count(x) > 1 ? ")" : "("}.join("")
end

def duplicate_encode(word)
  word.downcase.gsub(/./) do |char|
    word.downcase.count(char.downcase) > 1 ? ")" : "("
  end
end

=end
