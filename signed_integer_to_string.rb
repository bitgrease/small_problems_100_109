def integer_to_string(integer)
  digits = %w[0 1 2 3 4 5 6 7 8 9]
  number = ''
  loop do 
    integer, remainder = integer.divmod(10)
    number.prepend(digits[remainder])
    break if integer == 0
  end
  number
end

def signed_integer_to_string(integer)
  sign = ''
  multiplier = 1
  case (integer <=> 0)
  when -1 then (sign = '-') && (multiplier = -1)
  end
  integer_to_string(multiplier * integer).prepend(sign)
end

p signed_integer_to_string(-100)
p signed_integer_to_string(100)
p signed_integer_to_string(0)