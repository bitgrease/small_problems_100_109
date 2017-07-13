require 'irb'
# write a method that takes a positive integer and returns
# the sum of its digits

# input - a positive integer
# output - positive integer representing the sum of each
# digit in the original number

# Soooo close on my initial try. Missed calling the reduce on the result of the
# map. Also, the useless assignment. D'oh!

# def sum(number)
#   numbers = number.to_s.chars.map(&:to_i)
#   numbers.reduce(:+)
# end

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
