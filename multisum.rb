def multisum(number)
  return 0 if number == 1
  if number % 3 == 0 or number % 5 == 0
      number += multisum(number - 1)
  else
    multisum(number - 1)
  end
end

def multisum_reduce(number)
  array_of_multiples = []
  for n in 3..number
    array_of_multiples << n if (n % 3 == 0) || (n % 5 == 0)
  end
  array_of_multiples.reduce(:+)
end