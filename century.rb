def century(year)
  ending = ''
  century = ''
  century = year%100 != 0 ? year/100 + 1 : century = year/100
  case century.to_s[-1]
  when '1' 
    if century.to_s[-2].eql?('1') 
      ending = 'th'
    else 
      ending = 'st'
    end
  when '2' then ending = 'nd'
  when '3' then ending = 'rd'
  else
    ending = 'th'
  end
  century.to_s + ending
end