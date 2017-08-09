def swapcase(str)
  str.chars.map do |char|
    if ('a'..'z').include? char
      char.upcase
    elsif ('A'..'Z').include? char
      char.downcase
    else
      char
    end
  end.join
end