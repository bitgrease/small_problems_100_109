def gregorian_leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def leap_year?(year)
  case 
  when year == 1752 then true
  when year > 1752 then gregorian_leap_year?(year)
  else 
    year % 4 == 0
  end
end
