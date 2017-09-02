require 'pry'

def sum_square_difference(number)
  sum_squared = 0
  summed_number = 0
  squares_summed = 0

  1.upto(number) do |n| 
    summed_number += n 
    squares_summed += (n ** 2)
  end
  
  sum_squared = summed_number ** 2

  sum_squared - squares_summed
end

p sum_square_difference(3)
p sum_square_difference(10)
p sum_square_difference(1)
p sum_square_difference(100)