def fizzbuzz(num1, num2)
  result = ''
  for n in num1..num2
    result += 'Fizz' if n % 3 == 0 
    result += 'Buzz' if n % 5 == 0
    result += n.to_s if result[-1].to_s.eql?(' ') || result.size.zero?
    result += (n == num2 ? '' : ', ')
  end
  result
end