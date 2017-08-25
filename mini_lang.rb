def minilang(str)
  memory = { register: 0, stack: [] }
  inputs = str.split
  
  until inputs.empty?
    input = inputs.shift
    case input
    when /[0-9]+/ then memory[:register] = input.to_i
    when 'PUSH' then memory[:stack] << memory[:register]
    when 'ADD' then memory[:register] += memory[:stack].pop
    when 'SUB' then memory[:register] -= memory[:stack].pop
    when 'MULT' then memory[:register] *= memory[:stack].pop
    when 'DIV' then memory[:register] /= memory[:stack].pop
    when 'MOD' then memory[:register] %= memory[:stack].pop
    when 'POP' then memory[:register] = memory[:stack].pop
    when 'PRINT' then puts memory[:register]

    end
  end  
  memory
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')

# Further Exploration

minilang('4')