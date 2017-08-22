def buy_fruit(fruit_array)
  buy_list = []
  fruit_array.each do |list|
      list.last.times { buy_list << list.first }
  end
  buy_list
end


# more better ruby :)

def buy_fruit(fruit_array)
  fruit_array.map { |fruit, how_many| [fruit] * how_many }.flatten
end