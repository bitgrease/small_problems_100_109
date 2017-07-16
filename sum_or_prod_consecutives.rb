def product(num)
  num.eql?(1) ? 1 : num *= product(num - 1)
end

def sum(num)
  num.eql?(1) ? 1 : num += sum(num - 1)
end

operation = nil
entered_integer = nil
loop do
  puts '>> Please enter an integer greater than 0: '
  entered_integer = gets.chomp
  break if entered_integer.match?(/^\d+$/) && !entered_integer.to_i.zero?
  puts '>> Input must be an integer greater than 0!'
end

loop do
  puts '>> Enter \'s\' to compute the sum, \'p\' to compute the product.'
  operation = gets.chomp
  break if %w[p s].include? operation
  puts '>> Please enter either \'s\' or \'p\' for sum or product!'
end

case operation
when 's'
  puts "The sum of the integers between 1 and #{entered_integer} " \
       + " is #{sum(entered_integer.to_i)}."
else
  puts "The product of the integers between 1 and #{entered_integer} " \
       + " is #{product(entered_integer.to_i)}."
end
