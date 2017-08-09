def mad_lib
  words = []
  word_types = %w[noun verb adjective adverb]
  for word in word_types
    if %[a e i o u].include? word[0]
      print "Enter an #{word}: "
    else
      print "Enter a #{word}: "
    end
    words << gets.chomp.downcase
  end

  puts "Your #{words[2]} #{words[0]} was caught #{words[1]} #{words[3]}."
  puts 'Hmm, seems suspicious.'
end