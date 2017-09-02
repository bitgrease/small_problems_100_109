# odd
# multiple of 7
# no repeat digits

def digits_repeat?(number)
  number.to_s.chars.any? { |s| number.to_s.count(s) > 1 }
end

def featured(number)
  loop do
    number += 1
    return number if (number.odd? && number % 7 == 0 && !digits_repeat?(number))
    break if number >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements.'
end

# refactored after looking at LS solution

def digits_repeat?(number)
  !(number.to_s.chars.eql? number.to_s.chars.uniq)
end

def featured(number)

  loop do
    number += 1
    return number if (number.odd? && number % 7 == 0 && !digits_repeat?(number))
    break if number >= 9_876_543_210
  end
  
  'There is no possible number that fulfills those requirements.'
end