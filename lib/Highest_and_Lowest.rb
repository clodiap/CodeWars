def high_and_low(numbers)
  numbers = numbers.split.map! {|i| i.to_i}
  return "#{numbers.max} #{numbers.min}"
end

### autres solutions intéressantes :

# def high_and_low(numbers)
#   numbers.split.map(&:to_i).minmax.reverse.join(' ')
# end

# def high_and_low(numbers)
#   a = numbers.split.map(&:to_i).sort
#   "#{a.last} #{a.first}"
# end
