def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  (hours.to_i * 60 + minutes.to_i) % 1440
end

def before_midnight(time)
  hours, minutes = time.split(':')map(&:to_i)
  # could do this at the end of calculations but, why wait if
  # we know that 24 hrs or '00:00' is going to be '0'
  if hours.to_i == 24 || (hours.to_i == 0 &&
     minutes.to_i == 0)
    return 0
  end
  (23 - hours) * 60 + 60 - minutes
end

def ls_before_midnight(time)
  before_minutes = after_midnight(time)
  return 0 if before_minutes == 1440
  before_minutes
end