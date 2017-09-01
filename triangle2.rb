def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  # return :invalid if angles.count(0) > 0
  # return :invalid unless angles.reduce(:+).eql? 180

  # angles.each do |angle|
  #   if angle.eql? 90
  #     return :right
  #   elsif angle > 90
  #     return :obtuse
  #   end
  # end

  # return :acute

  case 
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.any? { |angle| angle > 90}
    :obtuse
  else
    :acute
  end
end