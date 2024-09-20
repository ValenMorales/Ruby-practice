def add(a, b)
  a + b
rescue TypeError
  "Error: Invalid data type for addition"
end

def subtract(a, b)
  a - b
rescue TypeError
  "Error: Invalid data type for subtraction"
end

def multiply(a, b)
  a * b
rescue TypeError
  "Error: Invalid data type for multiplication"
end

def divide(a, b)
  return "Error: Division by zero is not valid" if b == 0

  # When performing float-division on two integers, either use "\
  # fdiv or convert one-side integer to float.
  a.fdiv(b)
rescue TypeError
  "Error: Invalid data type for division"
end

def power(a, b)
  result = 1
  b.to_i.times do
    result *= a
  end
  result
rescue TypeError
  "Error: Invalid data type for exponentiation"
end

def modulo(a, b)
  a % b
rescue TypeError
  "Error: Invalid data type for modulo"
end

def logarithm(a, base)
  Math.log(a, base)
rescue Math::DomainError
  "Error: Logarithm not defined for these values"
rescue TypeError
  "Error: Invalid data type for logarithm"
end

def square_root(a)
  return "Error: Square root not defined for negative numbers" if a < 0

  Math.sqrt(a)
rescue TypeError
  "Error: Invalid data type for square root"
end

def evaluate_selection(selected_operation, operand1, operand2 = nil)
  case selected_operation
  when "add" then add(operand1, operand2)
  when "subtract" then subtract(operand1, operand2)
  when "multiply" then multiply(operand1, operand2)
  when "divide" then divide(operand1, operand2)
  when "power" then power(operand1, operand2)
  when "modulo" then modulo(operand1, operand2)
  when "logarithm" then logarithm(operand1, operand2)
  when "square" then square_root(operand1)
  else "Error: Invalid operation"
  end
end
