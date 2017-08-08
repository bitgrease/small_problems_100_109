def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

def word_cap(str)
  str.split.map do |word|
    word[0].upcase + word.slice(1, word.size - 1)
  end.join(' ')
end

def word_cap(str)
  str.split.map do |word|
    if ('a'..'z').include? word[0]
      word = (word[0].ord - 32).chr + word.slice(1, word.size - 1)
    end
  end.join(' ')
end