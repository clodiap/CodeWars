# Example
# In given sample test case, first string is "baceb" so the substrings are b, ba, bac, bace, baceb, a, ac, ace, aceb, c, ce, ceb, e, eb, b and the number of vowels in each substring are 0, 1, 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 1, 1, 0 and the total number is sum of all presence which is 16.
# b     0-0
# ba    0-1
# bac   0-2
# bace  0-3
# baceb 0-4
# a     1-1
# ac    1-2
# ace   1-3
# aceb  1-4
# c     2-2
# ce    2-3
# ceb   2-4
# e     3-3
# eb    3-4
# b     4-4

def vowel_recognition input
  nb_max = input.length-1
  nb_vowel = input.scan(/[aeouiAEOUI]/).count

  first_index = 0
  second_index = 0


end


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

# def vowel_recognition input # temps d'execution trop long
#   myArray = input.downcase.chars
#   newArray = []

#   (0..myArray.length-1).each_with_index do |i| # 0,1,2,3,4
#     (0..myArray.length-1).each_with_index do |j| # 0,1,2,3,4
#       substring = myArray[i..j].join
#       if substring != ""
#         item = substring.count "\\aeiou"
#         newArray << item
#       end

#     end

#   end
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


p vowel_recognition("bAceb") # 16
# p vowel_recognition("aeiouAEIOU") # 220
