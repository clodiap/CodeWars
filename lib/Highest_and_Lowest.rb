def high_and_low(numbers)
  numbers = numbers.split.map! {|i| i.to_i}
  return "#{numbers.max} #{numbers.min}"
end

p high_and_low("4 5 29 54 4 0 -214 542 -64 1 -3 6 -6")

### autres solutions intéressantes :

# def high_and_low(numbers)
#   numbers.split.map(&:to_i).minmax.reverse.join(' ')
# end

# def high_and_low(numbers)
#   a = numbers.split.map(&:to_i).sort
#   "#{a.last} #{a.first}"
# end
