=begin
Given two numbers and an arithmetic operator (the name of it, as a string), return the result of the two numbers having that operator used on them.

a and b will both be positive integers, and a will always be the first number in the operation, and b always the second.

The four operators are "add", "subtract", "divide", "multiply".

A few examples:

arithmetic(5, 2, "add")      => returns 7
arithmetic(5, 2, "subtract") => returns 3
arithmetic(5, 2, "multiply") => returns 10
arithmetic(5, 2, "divide")   => returns 2.5

=end

def arithmetic(a, b, operator)
  case operator
  when "add"
    return a + b
  when "subtract"
    return a - b
  when "multiply"
    return a * b
  when "divide"
    return a / b
  end
end

p arithmetic(5, 2, "add")
p arithmetic(5, 2, "subtract")
p arithmetic(5, 2, "multiply")
p arithmetic(5, 2, "divide")


## autres solutions

# def arithmetic(a, b, operator)
#   operations = { add: "+", subtract: "-", multiply: "*", divide: "/" }
#   a.public_send(operations[operator.to_sym], b)
# end
