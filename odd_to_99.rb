(1..99).each { |num| puts num if num.odd? }
puts (1.upto(99).select { |num| num % 2 == 1 })
