def multiply_all_pairs(array1, array2)
  array1.product(array2).map { |arr| arr.reduce(:*) }.sort
end