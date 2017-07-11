# Write a method that counts the occurences of each element in a given array

# Input - An array (guaranteed at least one element? Any nil elements?)
# Output - A line for each unique element with the count of occurrences. Ex:
# car => 4
# Questions:
#   Case sensitive?
#   Output in any order? Order of occurrence in list? Sorted?

vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

def count_occurrences(array)
  count_hash = {}
  array.each do |element|
    if count_hash[element]
      count_hash[element] += 1
    else
      count_hash[element] = 1
    end
  end
  count_hash.keys.each { |key| puts "#{key} => #{count_hash[key]}" }
end

count_occurrences vehicles

# Could have used Array#count but didn't know if we were supposed to roll our own...