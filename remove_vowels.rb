def remove_vowels(str)
  str.map { |el| el.gsub(/[aeiou]/i,'')}
end