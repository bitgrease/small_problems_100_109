def string_to_integer(number_as_string)
  digit_hash = {'1' => 1, '2' => 2, '3' => 3, '4' => 4,
                '5' => 5, '6' => 6, '7' => 7, '8' => 8,
                '9' => 9, '0' => 0}

  number = 0
  number_as_string.chars.reverse.each_with_index do |char, index|
    number += digit_hash[char] * 10 ** index
  end
  number
end

def string_to_signed_integer(string)
  multiplier = 1
  start = 0
  case string[0]
  when '-' then multiplier = -1 && start = 1
  when '+' then start = 1
  end
  string_to_integer(string[start..-1]) * multiplier
end