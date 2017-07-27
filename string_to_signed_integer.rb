def string_to_signed_integer(number_as_string)
  digit_hash = {'1' => 1, '2' => 2, '3' => 3, '4' => 4,
                '5' => 5, '6' => 6, '7' => 7, '8' => 8,
                '9' => 9, '0' => 0}

  number = 0
  sign = nil
  if number_as_string[0].eql?('-') || number_as_string[0].eql?('+')
    sign = number_as_string.slice!(0)
  end

  number_as_string.chars.reverse.each_with_index do |char, index|
    number += digit_hash[char] * 10 ** index
  end

  number *= -1 if sign.eql? '-'
  number
end

# LS solution for reference. Uses the previous exercise in solution.