def double_consonants(str)
  str.chars.map do |char|
    case 
    when char =~ /[a-z]/i
      char * 2
    when char =~ /[aeiou]/i
      char  
    else
      char
    end
  end.join
end