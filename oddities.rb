def oddities(array)
  odd_array = []
  push = true
  array.each do |el|
    odd_array << el if push
    push = !push
  end
  odd_array
end

def return_nth(array, nth_value, use_first_value=true)
  return_array = []
  use_first_value ? index = 0 : index = nth_value
  while index < array.size
    return_array << array[index]
    index += nth_value
  end
  return_array
end