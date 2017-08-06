MAX_DISPLAY_LENGTH = 76

def print_in_box(str)
  size = 0
  len = MAX_DISPLAY_LENGTH if str.length > MAX_DISPLAY_LENGTH
  len ||= str.length + 2
  hr = "+" + "-" * len + "+"
  empty_line = "|" + ' ' *len + "|"
  puts hr
  puts empty_line
  until str.empty?
    size = str.size
    puts "| " + str.slice!(0..73) + " |" if size > len
    puts "| " + str.slice!(0..73) + " " * (len - size - 2) + " |" if size < len
  end
  puts empty_line
  puts hr  
end

print_in_box("This is the end of the world as we know it and I feel fine. Oh I feel fine, yes I feel fine. Yeah I feel fine. The other day I drifted continental divide. Milton Berstein.")