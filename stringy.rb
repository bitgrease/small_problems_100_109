# input - a positive integer
# output - Alternating string of 1's and 0's

# My initial solution
# def stringy(num)
#   num_string = ''
#   char = nil
#   num.times do
#     char = char.nil? || char.include?('0') ? '1' : '0'
#     num_string += char
#   end
#   num_string
# end

# Solution from LS - slightly modified
# need to remember the index is 0 - 7 with original integer returned

def stringy(size, start_digit = 1)
  numbers = []
  if start_digit.eql?(1)
    size.times { |index| numbers << (index.even? ? 1 : 0) }
  elsif start_digit.eql?(0)
    size.times { |index| numbers << (index.even? ? 0 : 1) }
  else
    puts 'Sorry, must use either 0 or 1 for the second argument.'
  end
  numbers.join
end

# Tests - should all be true
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(7,0) == '0101010'
