def multiply_list(array1, array2)
  array1.map.each_with_index { |el, idx| el * array2[idx] }
end

def multiply_list(array1, array2)
  array1.zip(array2).map { |arr| arr.inject(:*) }
end