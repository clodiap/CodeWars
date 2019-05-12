# John has invited some friends. His list is:
# s = "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill";
# Could you make a program that
#     makes this string uppercase
#     gives it sorted in alphabetical order by last name.
# When the last names are the same, sort them by first name. Last name and first name of a guest come in the result between parentheses separated by a comma.
# So the result of function meeting(s) will be:
# "(CORWILL, ALFRED)(CORWILL, FRED)(CORWILL, RAPHAEL)(CORWILL, WILFRED)(TORNBULL, BARNEY)(TORNBULL, BETTY)(TORNBULL, BJON)"
# It can happen that in two distinct families with the same family name two people have the same first name too.

# My solution
def meeting(s)
  '(' + s.upcase.split(';').map {|str| str.split(':').reverse}.sort.map {|arr| arr.join(', ')}.join(')(') + ')'
end


# Others'solutions

# def meeting(s)
#   names =
#     s
#       .upcase
#       .split(";")
#       .map { |name| name.split(":") }
#       .sort_by { |name, last| [last, name] }
#       .map { |name, last| "(#{last}, #{name})" }
#       .join
# end

# def meeting(s)
#     s.split(';').map {|el| '(' + el.split(':').reverse.join(', ').upcase+ ')'}.sort.join
# end

# def meeting(s)
#     "(#{s.upcase.split(';').map { |name| name.split(':') }.map { |name| name[0], name[1] = name[1], name[0] }.sort.
#       map { |name| name.join(', ') }.join(')(')})"
# end
