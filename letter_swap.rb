def swap(str)
  swapped = str.split.map do |word| 
              unless word.length ==1
                temp = word.slice!(-1)
                word.concat(word.slice!(0)).prepend(temp)
              end
              word
            end
  swapped.join(' ')
end

# LS solution is better

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  str.split.map { |word| swap_first_last_characters(word) }.join(' ')
end