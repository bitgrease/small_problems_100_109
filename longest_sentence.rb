def longest_sentence(file)
  text = File.read(file)
  sentences = text.split(/[.!?]/)

  word_counts = sentences.map { |arr| arr.split.size}

  puts "Largest sentence: #{sentences[word_counts.index(word_counts.max)].strip}"
  puts "Contains #{word_counts.max} words."
end

longest_sentence('gettysburg.txt')

# LS solution using max_by

text = File.read('sample_text.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"