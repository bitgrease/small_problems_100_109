def interleave(array1, array2)
  result_array = []
  array1.each_with_index do |el1, index|
    result_array << el1
    result_array << array2[index]
  end
  result_array
end

def interleave(array1, array2)
  array1.zip(array2).flatten
end