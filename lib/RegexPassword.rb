# Regex Password Validation
# You need to write regex that will validate a password to make sure it meets the following criteria:
#     At least six characters long
#     contains a lowercase letter
#     contains an uppercase letter
#     contains a number
# Valid passwords will only be alphanumeric characters.

def validatePassword(password)
  if /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).[[:alnum:]]{6,}$/.match(password)
    return true
  else
    return false
  end
end

puts validatePassword("P9UgTv")
