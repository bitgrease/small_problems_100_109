ordinal_place = %w[1st 2nd 3rd 4th 5th]

numbers = []
counter = 0
last_number = nil

5.times do 
  puts "==> Enter the #{ordinal_place[counter]} number:"
  numbers << gets.chomp.to_i
  counter += 1
end

puts '==> Enter the last number:'
last_number = gets.chomp

if numbers.include? last_number.to_i
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end