print 'Please write word or multiple words: '
word = gets.chomp

count = 0
for char in word.chars 
  count += 1 if char.match(/[^\s]/)
end

puts "There are #{count} characters in \"#{word}\"."


# solution from LS

print 'Please write word or multiple words: '
word = gets.chomp

number_of_chars = word.delete(' ').size

puts "There are #{number_of_chars} characters in \"#{word}\"."