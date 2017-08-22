def get_grade(*grades)
  average = grades.inject(:+)/grades.size

  case average
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  when  0..59 then 'F'
  else 'A'
  end
end