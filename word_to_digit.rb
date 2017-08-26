def word_to_digit(str)
  number_words = %w[zero one two three four five six seven eight nine]

  number_words.each do |number|
    str.gsub!(/\b#{number}\b/i, number_words.index(number).to_s)
  end
  str
end