# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized.
# Examples
# to_camel_case("the-stealth-warrior") # returns "theStealthWarrior"
# to_camel_case("The_Stealth_Warrior") # returns "TheStealthWarrior"

# My solution
def to_camel_case(str)
  new_str = str.gsub(/[-_]/, ' ')
  new_str = new_str.split(' ')
  new_str.map.with_index { |word, ind| ind == 0 ? word : word.capitalize! }
  new_str.join
end

# Others' solutions

# def to_camel_case(str)
#   str.gsub(/[_-](.)/) {"#{$1.upcase}"}
# end

# def to_camel_case(str)
#   str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join
# end
