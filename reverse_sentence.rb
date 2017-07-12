# method takes one argument - a string - and returns the same string with words
# in reverse order

# break string up into individual words
# create new string, joining words with spaces.
# Questions- Does punctuation need to be included?
#            What about words separated by more than one space?
#            Should the # of spaces be maintained? Assume single space.

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

# Tests
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
