def triangle(number)
  stars = "*"
  until stars.length > number
    puts stars.rjust(number)
    stars += "*"
  end
end

def upside_down_triangle(number)
  stars = "*" * number
  until stars.length.zero?
    puts stars.rjust(number)
    stars.slice!(-1,2)
  end
end