# Write a method that takes a positive integer, and returns a list of the digits in the number

# input Integer - can we assume it's a valid positive Integer?
# output - an array with the digits in the integer with the digit positions maintained.
#  i.e. first digit is index 0, second is index 1, etc



def digit_list(number)
  # Thank you rubocop for the &:to_i syntax
  number.to_s.chars.map &:to_i
end

# Tests
puts digit_list(12_345)  == [1, 2, 3, 4, 5]    # => true
puts digit_list(7)       == [7]                # => true
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444)     == [4, 4, 4]          # => true
