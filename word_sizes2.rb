def word_sizes(str)
  size_hash = Hash.new(0)
  str.split.each do |word|
    size_hash[word.gsub(/[^a-z]/i,'').length] += 1
  end
  size_hash.sort.to_h
end

p word_sizes('Four score and seven.')