def diamond(number)
  for stars in 1..number do 
    puts ("*" * stars).center(number) if stars.odd?
  end

  for stars in (1..number - 1).to_a.reverse do 
    puts ("*" * stars).center(number) if stars.odd?
  end
end

def hollow_diamond(number)
  for stars in 1..number do 
    if stars.eql? 1
      puts "*".center(number)
    elsif stars.odd?
      puts ("*" + " " * (stars - 2) + "*").center(number) 
    end
  end

  for stars in (1..number - 1).to_a.reverse do 
    if stars.eql? 1
      puts "*".center(number)
    elsif stars.odd?
      puts ("*" + " " * (stars - 2) + "*").center(number) 
    end
  end
end