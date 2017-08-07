def dupl(array)
  array.each { |el| return el if array.count(el) == 2 }
end 

def find_dupl(array)
  array.find { |el| array.count(el) == 2 }
end