print 'What is your age? '
entered_age = gets.chomp

print 'At what age would you like to retire? '
retire_age = gets.chomp

years_to_retirement = retire_age.to_i - entered_age.to_i
current_year = Time.new.year
retire_year = current_year + years_to_retirement

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{years_to_retirement} years of work to go!"
