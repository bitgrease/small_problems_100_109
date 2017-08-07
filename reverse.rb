def reverse!(array)
  temp_array = array.clone
  (array.size).times do
    array.unshift(temp_array.shift)
    array.pop
  end
  array
end

# LS Version for review

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end