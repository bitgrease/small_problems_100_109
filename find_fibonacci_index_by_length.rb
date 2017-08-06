def find_fibonacci_index_by_length(length)
  fib_array = [1, 1]
  length_test = 10 ** (length - 1)
  loop do
    fib_array << fib_array.last + fib_array[-2]
    break if fib_array.last / length_test > 0 &&
             fib_array.last / length_test < 10
  end
  fib_array.size
end

find_fibonacci_index_by_length(2) == 7
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847