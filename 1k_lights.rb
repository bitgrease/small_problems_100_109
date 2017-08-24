lights = []
1000.times do
  lights << false
end

def toggle_lights(lights)
  1.upto(lights.size) do |counter|
    lights.map!.each_with_index do |light, idx|
      ((idx + 1) % counter == 0) ? !light : light
    end
  end
end

def show_lights_on(lights)
  lights_on = lights.map.each_with_index do |light, idx|
    idx + 1 if light
  end.compact
  
  puts "The following lights are on #{lights_on[0..-2].join(', ')} and #{lights_on.last}"
end

toggle_lights(lights)
show_lights_on(lights)