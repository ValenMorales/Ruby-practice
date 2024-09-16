# calculator.rb

def add(a, b)
    a + b
  end
  
  def subtract(a, b)
    a - b
  end
  
  def multiply(a, b)
    a * b
  end
  
  def divide(a, b)
    return "Division by zero is not valid" if b == 0
    a / b
  end
  
  #def power(a, b)
  #  a ** b
  #end

  # power function manually, to use for loop 
  def power(a, b)
    result = 1
    b.to_i.times do
      result *= a
    end
    result
  end
  
  def modulo(a, b)
    a % b
  end
  
  def logarithm(a, base)
    Math.log(a, base)
  end
  
  def square_root(a)
    return "Square root not defined for negative numbers" if a < 0
    Math.sqrt(a)
  end
  
  def evaluate_selection(selected_operation, operand1, operand2 = nil)
    case selected_operation
    when "add"
      add(operand1, operand2)
    when "subtract"
      subtract(operand1, operand2)
    when "multiply"
      multiply(operand1, operand2)
    when "divide"
      divide(operand1, operand2)
    when "power"
      power(operand1, operand2)
    when "modulo"
      modulo(operand1, operand2)
    when "logarithm"
      logarithm(operand1, operand2)
    when "square"
      square_root(operand1)
    else
      "Error: Invalid operation"
    end
  end
  