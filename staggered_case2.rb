def staggered_case(str, toggle_on_nonalpha=true, upcase_first=true)
  char_case = upcase_first ? 'downcase' : 'upcase'
  str.chars.map do |char|
    if char =~ /[a-z]/i 
      char_case = char_case.eql?('upcase') ? 'downcase' : 'upcase'
      char.send(char_case)
    else
      if toggle_on_nonalpha
        char_case = char_case.eql?('upcase') ? 'downcase' : 'upcase'
      end
      char
    end
  end.join
end