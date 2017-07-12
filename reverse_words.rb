# input - string of one or more words and spaces.
# output - given string with words with 5 or more characters reversed
#          spaces only included when more than one words
# Question: Does punctuation need to be reversed too?

def reverse_words(str)
  array_of_words = str.split
  modified_words = []
  array_of_words.each do |word|
    word.length > 4 ? modified_words << word.reverse : modified_words << word
  end
  modified_words.join(' ')
end

# Tests
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
