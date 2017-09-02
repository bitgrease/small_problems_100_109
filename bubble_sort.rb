def bubble_sort!(array)
  swap_happened = ''
  final_element = array.size
  until swap_happened.eql? 'n'
    swap_happened = 'n'
    index = 0
    final_element -= 1

    while index < final_element
      if array[index] > array[index + 1]
        array[index + 1], array[index] = array[index], array[index + 1]
        swap_happened = 'y'
        index += 1
      else
        index += 1
      end
    end 
  end
  array
end

p bubble_sort!([6,2,7,1,4])
p bubble_sort!([5,3])
p bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))