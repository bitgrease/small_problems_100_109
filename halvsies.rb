def halvsies(array)
  first_half = []
  second_half = []
  array.each do |el|
    if first_half.size < (array.size / 2) + (array.size % 2)
      first_half << el
    else
      second_half << el
    end
  end
  return first_half, second_half
end