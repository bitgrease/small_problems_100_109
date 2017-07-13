# input - an array of integers
# output - average of all integers in the array given
# Assumptions - The array will never be empty and always will have positive
# integers

# def average(array)
#   sum = 0
#   array.each { |num| sum += num }
#   sum/array.size
# end

# Solution shows using Array#reduce - combine all elements of an array
# using a binary operation

# def average(array)
#   sum = array.reduce { |sum, num| sum + num }
#   sum/array.count
# end

# and using a block

def average(array)
  array.reduce(:+) / array.count.to_f
end
puts average([1, 5, 87, 45, 8, 8]) == 25.666666666666668
puts average([9, 47, 23, 95, 16, 52]) == 40.333333333333336
