def running_total(array)
  total = 0
  array.map { |el| total += el }
end

def running_total_ewo(array)
  total = 0
  array.each_with_object([]) do |el, t_array|
    t_array << total += el
  end
end

def running_total_reduce(array)
  totals_array = []
  for n in 1..array.size
    totals_array << array.slice(0,n).reduce(:+)
  end
  totals_array
end

# From solutions by students, my favorite with reduce
def running_total_with_reduce_2(array)
  array.map.with_index do |el, idx|
    array[0..idx].reduce(:+)
  end
end
