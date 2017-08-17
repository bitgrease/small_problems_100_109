def uppercase(str)
  str.chars.all? do |letter|
    if letter =~ /[a-z]/i
      letter == letter.upcase
    else
      true
    end
  end
end