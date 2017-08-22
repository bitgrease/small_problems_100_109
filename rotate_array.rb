def rotate_array(array)
  array.map.each_with_index do |el, idx|  
    idx == array.size - 1 ? array.first : array[idx + 1]
  end
end

# better way
def rotate_object_general(object)
  case object.class.to_s
  when 'String' then rotate_array(object.chars).join
  when 'Array' then rotate_array(object)
  when 'Integer' then rotate_array(object.to_s.chars).join.to_i
  else
    puts "Can't rotate!"
  end
end