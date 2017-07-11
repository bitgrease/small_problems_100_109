# input
# - Takes one integer (can assume input is valid Integer)
# - Integer may be positive, zero, or negative
# output
# - Return true if absolute value is odd

# Tests
# is_odd?(2)   => false
# is_odd?(5)   => true
# is_odd?(-17) => true
# is_odd?(-8)  => false
# is_odd?(0)   => false

# robocop reports one offense but it's the method name identified in the 
# exercise.

def is_odd?(num)
  # could use the built-in Integer#odd? method but building my own for practice
  num.abs % 2 == 1
end


# Alternate method with remainder

def is_odd_rem?(num)
  num.abs.remainder(2) == 1
end
