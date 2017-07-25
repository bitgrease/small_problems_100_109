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

def hexadecimal_to_integer(hex_string)
  digits = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
             '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'a' => 10, 'b' => 11,
             'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }

  values = hex_string.chars.reverse.map { |hex_char| digits[hex_char] }
  decimal = 0
  values.each_with_index do |n, idx| 
    decimal += n * 16 ** idx
  end
  decimal
end