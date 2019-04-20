# Write a function, gooseFilter/goose_filter/GooseFilter, that takes an array of strings as an argument and returns a filtered array containing the same elements but with the 'geese' removed.

# The geese are any strings in the following array, which is pre-populated in your solution:

# def goose_filter (birds)
#   geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]

#   birds.select {|bird| !geese.include?(bird) }
# end

def goose_filter (birds)
  geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]

  birds.reject {|bird| geese.any? bird }
end


# autres solutions

# def goose_filter (birds)
#   geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
#   birds - geese
# end

# def goose_filter (birds)
#   geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
#   birds.reject { |bird| geese.include?(bird) }
# end

# def goose_filter (birds)
#   geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]
#   return birds.delete_if { |is_goose| geese.include? is_goose }
# end
