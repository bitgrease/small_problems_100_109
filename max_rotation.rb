def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotations(number)
  count = number.to_s.size
  until count == 1
    number = rotate_rightmost_digits(number, count)
    count -= 1
  end
  number
end

# Further exploration

def max_rotation(number)
  count = 0
  string_array_number = number.to_s.chars
  rotated_number_array = []
  until count == string_array_number.size - 1
    string_array_number[count..-1] = string_array_number[(count + 1)..-1] << string_array_number[count]
    count += 1
  end
  string_array_number.join.to_i
end

p max_rotation(105)