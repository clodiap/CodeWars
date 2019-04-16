=begin
Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
Examples:
spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
spinWords( "This is a test") => returns "This is a test"
spinWords( "This is another test" )=> returns "This is rehtona test"
=end

def spinWords(string)
  array = string.split(" ")
  new_phrase = ""
  array.each do |word|
    if word.length >= 5
      new_phrase += "#{word.reverse}"
      if word != array.last
        new_phrase += " "
      end
    else
      new_phrase += "#{word}"
      if word != array.last
        new_phrase += " "
      end
    end
  end
  puts new_phrase
  return new_phrase
end

spinWords("Hey fellow warriors")

# autre solution bcp plus belle que la mienne ^^, et pleins d'autre ici : https://www.codewars.com/kata/5264d2b162488dc400000001/solutions/ruby
=begin
def spinWords(string)
  string.split(' ').map! {|x| (x.length >= 5) ? x.reverse : x}.join(' ')
end
=end
