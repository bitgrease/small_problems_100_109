def triangle(side1, side2, side3)

  sides = [side1, side2, side3]
  length_hash = {}

  return :invalid if sides.count(0) > 0
  return :invalid if (sides.sort.first + sides.sort[1] < sides.sort.last)
  
  sides.each do |side|
    if length_hash[side]
      length_hash[side] += 1
    else
      length_hash[side] = 1
    end
  end

  case length_hash.size
  when 1 then return :equilateral
  when 2 then return :isosceles
  else return :scalene
  end
end