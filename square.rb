def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

# Recursion
def power(num, n)
  return num if n == 1
  multiply(num, power(num, n - 1))
end
