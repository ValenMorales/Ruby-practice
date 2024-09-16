require_relative "methods"
require_relative "operate"

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

    make_operation(num1,num2, operation)
end 

puts "Bye!"
