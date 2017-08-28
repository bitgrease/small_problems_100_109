# 65-90 is uppercase A-Z
# 97-122 is lowercse a-z

def letter_percentages(str)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  lower_letters = 0
  upper_letters = 0
  other = 0
  total_chars = str.size

  str.chars.each do |letter|
    case letter.ord
    when 65..90 then upper_letters += 1
    when 97..122 then lower_letters += 1
    else other += 1
    end
  end

  percentages[:lowercase] = (lower_letters/total_chars.to_f) * 100
  percentages[:uppercase] = (upper_letters/total_chars.to_f) * 100
  percentages[:neither] = (other/total_chars.to_f) * 100
  percentages
end

