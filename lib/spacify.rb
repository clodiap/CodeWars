# Modify the spacify function so that it returns the given string with spaces between each letter. In this exercise, you can assume that only strings will be passed to your function.

# spacify('hello world') // h e l l o  w o r l d


def spacify(str)
  # str.chars.map { |c| c += ' '}.join.rstrip
  str.gsub(/\w/) {|s| s + ' '}.rstrip
end

p spacify("hello world")

# autres solutions

# def spacify(str)
#   str.gsub /((?<!^)\S)/, ' \1'
# end

# def spacify(str)
# (str.chars*' ').gsub('  ',' ')
# end

# def spacify(str)
#   str.split(" ").map { |i| i.chars.join(" ") + " " }.join(" ").strip
# ends
