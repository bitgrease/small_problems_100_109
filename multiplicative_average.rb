def show_multiplicative_average(array)
  puts "The result is %0.3f" % (array.inject(:*) / array.size.to_f)
end