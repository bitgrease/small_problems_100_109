require 'date'
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def time_of_day(time_in_minutes)
  time_in_minutes =  time_in_minutes % MINUTES_PER_DAY
  hours, minutes = time_in_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
