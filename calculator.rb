require_relative "methods"

puts "Welcome to the basic calculator"

loop do
    puts "Please enter the first number (or type 'exit' to quit)"
    input_num1 = gets.chomp
    break if input_num1.downcase == "exit"
    num1 = input_num1.to_f

    puts "Please enter the second number"
    num2 = gets.chomp.to_f

    puts "Please choose an operation: add, subtract, multiply, divide, power, modulo, logarithm, square"
    operation = gets.chomp.downcase
    break if operation == "exit"

    if operation == "square_root"
    result = evaluate_selection(operation, num1)
    else
    result = evaluate_selection(operation, num1, num2)
    end

    puts "The result is: #{result}"
end 

puts "Bye!"

    