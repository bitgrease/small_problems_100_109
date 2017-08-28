def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do 
    first, last = [last, first + last]
  end

  last
end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

# better fibonacci_last

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
  end
end