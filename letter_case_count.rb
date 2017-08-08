def letter_case_count(str)
  count_hash = Hash.new(0)
  count_hash[:lowercase] = str.count('a-z')
  count_hash[:uppercase] = str.count('A-Z')
  count_hash[:neither] = str.length - count_hash.values.reduce(:+)
  count_hash
end