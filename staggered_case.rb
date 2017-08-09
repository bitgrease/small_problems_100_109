def staggered_case(str)
  char_case = 'downcase'
  str.chars.map do |char|
    char_case = char_case.eql?('upcase') ? 'downcase' : 'upcase'
    char.send(char_case)
  end.join
end

def staggered_case(str, upcase_first=true)
  char_case = upcase_first ? 'downcase' : 'upcase'
    str.chars.map do |char|
    char_case = char_case.eql?('upcase') ? 'downcase' : 'upcase'
    char.send(char_case)
  end.join
end