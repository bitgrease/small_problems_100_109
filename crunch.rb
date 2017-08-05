def crunch(str)
  new_str = ''
  str.chars.each do |c|
    if new_str.empty?
      new_str << c
    else
      new_str << c unless c.eql? new_str[-1]
    end
  end
  new_str
end