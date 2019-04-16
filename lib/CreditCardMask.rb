=begin
Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

Your task is to write a function maskify, which changes all but the last four characters into '#'.
maskify('4556364607935616') # should return '############5616'
maskify('64607935616')      # should return '#######5616'
maskify('1')                # should return '1'
maskify('')                 # should return ''

# "What was the name of your first pet?"
maskify('Skippy')                                   # should return '##ippy'
maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

=end

def maskify(cc)
  new_cc = cc.chars # transforme la string en tableau fait de lettres
  new_cc[0..-5].each { |x| x.replace("#")}
  return new_cc.join
end

# autres solutions :
=begin
def maskify(cc)
  cc.chars.each_with_index.map{|x,i| i < cc.length - 4 ? '#' : x}.join
end

def maskify(cc)
  hash = cc[0..-5].length
  '#' * hash + cc[hash..-1]
end


def maskify(cc)
  for i in 0..cc.length
      cc[i] = '#' unless i>=cc.length-4
  end
  cc
end
=end
