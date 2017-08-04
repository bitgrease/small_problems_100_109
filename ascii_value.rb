def ascii_value(str)
  str.chars.map(&:ord).reduce(0,:+)
end