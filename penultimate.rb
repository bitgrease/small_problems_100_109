def penultimate(str)
  str.split[-2]
end

def middle(str)
  words = str.split
  case words.size
  when 0 then return ''
  when 1 then return words.first
  when 2 then return words.first, words.last
  end

  if words.size.even?
    return words[words.size/2 - 1], words[words.size/2]
  else
    return words[words.size/2]
  end
end