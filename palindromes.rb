def substrings(str)
  substrings_array = []
  for m in 0...str.size
    for n in m...str.size
      substrings_array << str[m..n]
    end
  end
  substrings_array
end

def palindromes(str)
  substrings(str).select do |substr| 
    substr == substr.reverse && substr.size > 1 
  end
end
