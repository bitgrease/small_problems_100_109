def push(stack, register)
  stack << register
end

def add(stack, register)
  abort "Error - Stack Empty!" if stack.empty?
  register += stack.pop
end

def sub(stack, register)
  abort "Error - Stack Empty!" if stack.empty?
  register -= stack.pop
end

def mult(stack, register)
  abort "Error - Stack Empty!" if stack.empty?
  register *= stack.pop
end

def div(stack, register)
  abort "Error - Stack Empty!" if stack.empty?
  register /= stack.pop
end

def mod(stack, register)
  abort "Error - Stack Empty!" if stack.empty?
  register %= stack.pop
end

def pop(stack, register)
  abort "Error - Stack Empty!" if stack.empty?
  register = stack.pop
end

def minilang(str)
  memory = { register: 0, stack: [] }
  inputs = str.split
  until inputs.empty?
    input = inputs.shift
    case input.upcase
    when /[0-9]+/ then memory[:register] = input.to_i
    when 'PUSH' then push(memory[:stack], memory[:register])
    when 'ADD' then memory[:register] = add(memory[:stack], memory[:register])
    when 'SUB' then memory[:register] = sub(memory[:stack], memory[:register])
    when 'MULT' then memory[:register] = mult(memory[:stack], memory[:register])
    when 'DIV' then memory[:register] = div(memory[:stack], memory[:register])
    when 'MOD' then memory[:register] = mod(memory[:stack], memory[:register])
    when 'POP' then memory[:register] = pop(memory[:stack], memory[:register])
    when 'PRINT' then puts memory[:register]
    else 
      abort('Aborted! Invalid Parameter!')
    end
  end
  memory[:register]
end

p minilang("3 PUSH 5 MOD PUSH #{minilang('-7 PUSH 3 PUSH 4 PUSH 5 MULT ADD add')} DIV")
