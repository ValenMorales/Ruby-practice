require_relative "methods"

def make_operation(num1, num2, operation)
    result =
    if operation == "square_root"
        evaluate_selection(operation, num1)
    else
        evaluate_selection(operation, num1, num2)
    puts "The result is: #{result}"
end
