# Modify the kebabize function so that it converts a camel case string into a kebab case.

# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps

# Notes:

#     the returned string should only contain lowercase letters

# My solution
def kebabize(str)
  while (/[A-Z]/).match?(str)
    str.insert(str.index(/[A-Z]/), '-')
    str[str.index(/[A-Z]/)] = str[str.index(/[A-Z]/)].downcase
  end
  str.gsub(/[0-9]/,'')
end

# Others' solution

# def kebabize(str)
#   str.delete('^A-Za-z').split(/(?=[A-Z])/).join('-').downcase
# end

# def kebabize(str)
#   str.gsub(/\d+/, '').gsub(/(?<=.)[A-Z]/, '-\0').downcase
# end
