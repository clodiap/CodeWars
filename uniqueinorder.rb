=begin
Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
For example:
unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
=end

def unique_in_order(sequence)
  new_array = []
  sequence = sequence.chars if sequence.class == String
  # sequence = sequence.split(//) if sequence.class == Integer
  sequence.each.with_index do |x,i|
    new_array << x if i == 0 || x != sequence[i-1]
  end
  return new_array
end
p unique_in_order(89632541)

### autres solutions
=begin
def unique_in_order(iterable)
  (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end

def unique_in_order(iterable)
  it_array= []
  iterable.length.times do |x|
    it_array << iterable[x] if iterable[x] != iterable[x+1]
  end
  it_array
end
=end
