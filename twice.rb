def twice(int)
  return int if int.to_s.size == 1
  if int.to_s.size.even? && 
     int.to_s[0, int.to_s.size/2] == int.to_s[int.to_s.size/2..-1]
      int
  else
    int * 2
  end
end