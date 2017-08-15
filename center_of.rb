def center_of(str)
  if str.size.even?
    str[(str.size/2 - 1),2]
  else 
    str[str.size/2]
  end
end