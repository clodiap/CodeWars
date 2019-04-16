# Task

# Timed Reading is an educational tool used in many schools to improve and advance reading skills. A young elementary student has just finished his very first timed reading exercise. Unfortunately he's not a very good reader yet, so whenever he encountered a word longer than maxLength, he simply skipped it and read on.

# Help the teacher figure out how many words the boy has read by calculating the number of words in the text he has read, no longer than maxLength.

# Formally, a word is a substring consisting of English letters, such that characters to the left of the leftmost letter and to the right of the rightmost letter are not letters.
# Example

# For maxLength = 4 and text = "The Fox asked the stork, 'How is the soup?'", the output should be 7

# The boy has read the following words: "The", "Fox", "the", "How", "is", "the", "soup".

def timed_reading(max_length, text)
  result = []
  text.split.each do |word|
    word = word.gsub(/\W/,'')
    if !word.empty?
      result << word if word.count(word) <= max_length
    end
  end
  return result.count
end

timed_reading(4,"The Fox asked the stork, 'How is the soup?'")
timed_reading(1,"...")
timed_reading(3,"This play was good for us.")
timed_reading(1,"Oh!")

# autres solutions

# def timed_reading(max_length, text)
# text.delete("!,;:?.'").split.select {|word|  word.length <= max_length}.size
# end

# def timed_reading(max_length, text)
#   text.scan(/\b\w{1,#{max_length}}\b/).count
# end

# def timed_reading(max_length, text)
#    text.gsub(/[^a-zA-Z ]/,"").split(" ").select {|i| i.size <= max_length}.size
# end
