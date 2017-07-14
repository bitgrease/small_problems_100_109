# Input - length and width of room in meters (use as float based on example)
# Output - area of the room in square feet and square meters.
# Additional - Do not worry about validating Input
# 1 sqm = 10.7639 sqft

def room_size
  print 'Enter the length of the room in meters: '
  length_in_meters = gets.chomp
  print 'Enter the width of the room in meters: '
  width_in_meters = gets.chomp
  area_in_meters = width_in_meters.to_f * length_in_meters.to_f
  area_in_feet = area_in_meters * 10.7639
  puts "The area of the room is #{format('%.1f', area_in_meters)} square " \
       + "meters (#{format('%.2f', area_in_feet)} square feet)."
end

room_size
