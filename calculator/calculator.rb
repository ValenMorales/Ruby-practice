require_relative "methods"
require_relative "operate"

puts "Welcome to the basic calculator"

loop do
  begin
    puts "Please enter the first number (or type 'exit' to quit)"

    input_num1 = gets.chomp

    break if input_num1.downcase == "exit"

    raise TypeError, "Invalid input for the first number" unless input_num1.match?(/^\d*\.?\d+$/)
    num1 = input_num1.to_f

    puts
    "Please enter the second number (or leave blank if the operation" \
    "doesn't require a second number)"

    input_num2 = gets.chomp
    num2 = input_num2.empty? ? nil : input_num2.to_f

    if !input_num2.empty? && !input_num2.match?(/^\d*\.?\d+$/)
      raise TypeError, "Invalid input for the second number"
    end

    puts
    "Please choose an operation: add, subtract, multiply, divide,
     power, modulo, logarithm, square_root"

    operation = gets.chomp.downcase
    break if operation == "exit"

    valid_operations = [
      "add", "subtract", "multiply", "divide", "power",
      "modulo", "logarithm", "square_root"
    ]

    raise ArgumentError, "Invalid operation" unless
    valid_operations.include?(operation)

    result = make_operation(num1, num2, operation)
    puts "The result is: #{result}"

  rescue ZeroDivisionError
    puts "Error: Division by zero is not allowed."

  rescue TypeError => e
    puts "Error: #{e.message}"

  rescue ArgumentError => e
    puts "Error: #{e.message}"

  rescue StandardError => e
    puts "An error occurred: #{e.message}"
  end
end

puts "Bye!"
