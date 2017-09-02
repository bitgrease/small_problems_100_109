require 'date'
# if year starts on Sunday (3 friday 13ths)
# if month starts with Sunday, will have a friday 13th

def friday_13th(year)

  first_of_month = Date.new(year.to_i, 1, 1)

  # If January starts on Sunday, the year will have 3 Friday 13ths
  return 3 if first_of_month.sunday?

  bad_fridays = 0
  
  11.times do 
    first_of_month = first_of_month.next_month
    bad_fridays += 1 if first_of_month.sunday?
  end
  bad_fridays
end