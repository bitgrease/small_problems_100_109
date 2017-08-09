def sum_of_sums(array)
  sums = 0
  array.map { |num| sums += num }.reduce(:+)
end