# Example
# In given sample test case, first string is "baceb" so the substrings are b, ba, bac, bace, baceb, a, ac, ace, aceb, c, ce, ceb, e, eb, b and the number of vowels in each substring are 0, 1, 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 1, 1, 0 and the total number is sum of all presence which is 16.

# my solution
def vowel_recognition txt
  length_ = txt.length
  result =0
  (0...length_).each do |idx|
      result += ( idx + 1 ) * ( length_ - idx ) if ("aeiouAEIOU").include?(txt[idx])
  end
  result
end

##########################
# attempts ...
##########################

# def vowel_recognition txt
#   result = ""

#   (1..txt.length).each do |beg_|
#     result << (beg_..txt.length).each.map { |end_| txt[beg_-1...end_] }.to_s
#   end
#   p result.count("aeiouAEIOU")

# end


# def vowel_recognition input # temps d'execution trop long
#   myArray = input.downcase.chars
#   newArray = []
#   (0..myArray.length).each do |i|
#     myArray.each_with_index do |c,j|
#       # newArray << myArray[i..j].join
#       item = myArray[i..j].join.count "\\aeiou"
#       newArray << item
#     end
#   end
#   p newArray
#   return newArray.sum
# end



# def vowel_recognition2 input # temps d'execution trop long
#   # myArray = input.downcase.chars
#   input = input.downcase
#   newArray = []
#   (0..input.length-1).each_with_index do |i| # 0,1,2,3,4
#     (0..input.length-1).each_with_index do |j| # 0,1,2,3,4
#       item = input[i..j]
#       if item != ""
#         count = item.count "\\aeiou"
#         newArray << count
#       end
#     end
#   end
#   return newArray.sum
# end

##########################
# others' solutions
##########################

# def vowel_recognition input
#   input.chars.each.with_index.inject(0) { |sum, (c, i)|
#     sum += %w(a e i o u A E I O U).include?(c) ? (input.size - i) * (i+1) : 0
#   }
# end

# def vowel_recognition input
#   input.chars
#     .map.with_index { |x,i| "aeiouAEIOU".include?(x) ? i : -1 }
#     .select { |x| x > -1 }
#     .reduce(0) { |sum,i| sum + (i+1) * (input.size - i) }
# end
