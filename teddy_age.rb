def teddy_age
  puts 'Please enter a name: '
  name = gets.chomp
  name = 'Teddy' if name.size.zero?
  puts "#{name} is #{rand(20..200)} years old!"
end

teddy_age
