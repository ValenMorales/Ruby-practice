require_relative "methods"

def make_operation(num1, num2, operation)
    if operation == "square_root"
        result = evaluate_selection(operation, num1)
    else
        result = evaluate_selection(operation, num1, num2)
    end
    puts "The result is: #{result}"
end
