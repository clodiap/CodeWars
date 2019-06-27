# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

def sum_pairs2(ints, s) # works but too long
  result = []
  len = ints.length
  len_minus = ints.length - 1
  (0...len_minus).each do |ind|
    (1...len).each do |i|
      next_ind = ind + i
      if next_ind <= len_minus
        # p "#{ints[ind]} + #{ints[next_ind]}"
        if ints[ind] + ints[ind + i] == s
          result.push({ind => ints[ind], next_ind => ints[next_ind] })
        end

      end
    end
  end
  return nil if result.length == 0
  result.sort_by!{ |hash| hash.keys[1] }
  result[0].values
end

def sum_pairs(numbers, sum)

end

l1 = [1, 4, 8, 7, 3, 15]
p sum_pairs(l1, 8) #).to eq([1, 7])
p sum_pairs([0, 0, -2, 3], 2) # nil

l5 = [10, 5, 2, 3, 7, 5]
p sum_pairs(l5, 10) #).to eq([3, 7])
