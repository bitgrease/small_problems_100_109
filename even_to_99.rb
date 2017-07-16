1.upto(99) { |i| puts i if i.even? }

Array(1..99).each_with_index { |v,i| puts v if i.odd? }

puts (1..99).reject { |i| i.odd? }

puts 1.upto(99).select(&:even?)