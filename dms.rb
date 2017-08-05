DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
DEGREES_IN_A_CIRCLE = 360

def my_dms(number)
  degrees, remainder = number.divmod(1)
  minutes, seconds = (remainder * MINUTES_PER_DEGREE).divmod(1)
  seconds = (seconds * SECONDS_PER_MINUTE)
  puts "#{degrees}#{DEGREE} #{minutes}' #{seconds.round(3)}\" "
end

# Further Exploration - correct for negative or #'s > 360
def dms(degrees_float)
  degrees_float < 0 ? multiplier = -1 : multiplier = 1
  degrees_float = degrees_float.abs
  if degrees_float > DEGREES_IN_A_CIRCLE
    degrees_float = degrees_float % DEGREES_IN_A_CIRCLE
  end 
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  puts "#{multiplier * degrees}#{DEGREE} #{minutes}' #{seconds.round(3)}\" "
end