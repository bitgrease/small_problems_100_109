def short_long_short(string1, string2)
  string1.size > string2.size ? 
                 string2 + string1 + string2 : string1 + string2 + string1
end