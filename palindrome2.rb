def real_palindrome?(str_or_array)
  normalized_str_or_array = str_or_array.downcase
  normalized_str_or_array.gsub!(/[^0-9A-Za-z]/,'')
  # alternate normalized_str_or_arry.delete('^a-z0-9')
  normalized_str_or_array.eql? normalized_str_or_array.reverse
end
