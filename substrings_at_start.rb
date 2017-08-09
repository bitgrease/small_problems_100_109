def substrings_at_start(str)
  substrings_array = []
  for n in 1..str.size
    substrings_array << str.slice(0,n)
  end
  substrings_array
end