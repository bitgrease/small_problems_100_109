def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def leap_year_2?(year)
  if year % 4 == 0
    if year % 100 == 0
      return year % 400 == 0
    else
      return year % 100 != 0
    end
  end
  false
end