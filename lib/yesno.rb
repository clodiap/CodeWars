# Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

def bool_to_word bool
  if bool == true
    return "Yes"
  elsif bool == false
    return "No"
  end
end

## solutions plus courtes :

# def bool_to_word bool
#   bool ? 'Yes' : 'No'
# end

# def bool_to_word bool
#   {true => 'Yes', false => 'No'}[bool]
# end

## avec une classe !!!
# class TrueClass
#   def to_word
#     'Yes'
#   end
# end

# class FalseClass
#   def to_word
#     'No'
#   end
# end

# def bool_to_word bool
#   bool.to_word
# end
