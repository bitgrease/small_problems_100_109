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

# String operators that mutate without !
# <<
# concat
# replace
# 
# Array operators that mutate without !
# 
# clear
# push
# concat
# fill
