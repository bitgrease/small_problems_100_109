def repeat_string(str,times_to_repeat)
  begin
    times_to_repeat.times { puts str }
  rescue
    return puts "Second argument must be an Integer!"
  end 
end

repeat_string("Hello!",'a')
repeat_string("Hello!",3)