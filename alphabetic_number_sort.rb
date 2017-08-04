NUMBERS = %w[ zero one two three four five six seven eight
              nine ten eleven twelve thirteen fourteen fifteen
              sixteen seventeen eighteen nineteen]

def alphabetic_number_sort(num_array)
  num_array.sort_by { |num| NUMBERS[num] }
end

def alphabetic_number_sort2(num_array)
  num_array.sort { |num1, num2| NUMBERS[num1] <=> NUMBERS[num2] }
end