# Write Number in Expanded Form

# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'

# NOTE: All numbers will be whole numbers greater than 0.

def expanded_form(num)
  num_array = num.digits
  tenth = []

  num_array.each.with_index do |n, ind|
    p ind
  end

  p tenth

end

expanded_form(12)
expanded_form(70304)
