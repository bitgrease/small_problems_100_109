def substrings(str)
  substrings_array = []
  for m in 0...str.size
    for n in m...str.size
      substrings_array << str[m..n]
    end
  end
  substrings_array
end
