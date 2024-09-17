require_relative "operate"

# read file content and make calculator operations 

File.open("manual_data.txt", "r") do |file|
  for line in file.readlines()
    data = line.split(" ")
    num1 = data[0].to_f
    num2 = data[2].to_f
    operation = data[1]
    puts(num1, num2, operation)
    make_operation(num1, num2, operation)
  end
end
