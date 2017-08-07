def reverse(array)
  new_array = []
  for n in 0...array.size
    new_array[n] = array[n]
  end
  new_array
end

def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

def reverse(array)
  new_array = array.each_with_object([]) do |el, new_array|
    new_array.unshift(el)
  end
  new_array
end
