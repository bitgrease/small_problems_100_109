print 'What is the bill? '
bill_amount = gets.chomp
print 'What is the tip percentage? '
entered_tip_percent = gets.chomp
normalized_tip_percent = entered_tip_percent.to_f / 100
tip_amount = bill_amount.to_i * normalized_tip_percent
bill_total = bill_amount.to_i + tip_amount
puts "The tip is $#{format '%.2f', tip_amount}."
puts "The total is $#{format '%.2f', bill_total}"
