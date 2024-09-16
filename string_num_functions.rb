# using string functions 

my_string = "Hello, World!"
uppercase_string = my_string.upcase
lowercase_string = my_string.downcase
reversed_string = my_string.reverse
occurrences = my_string.count("o")

# find the index of a specific character 
character_index = my_string.index("o")

# remove trailing whitespaces
trimmed_string = my_string.strip

character_count = my_string.length

puts "Uppercase: #{uppercase_string}"
puts "Lowercase: #{lowercase_string}"
puts "Trimmed: #{trimmed_string}"
puts "Character count: #{character_count}"
puts "Reversed: #{reversed_string}"
puts "Character index: #{character_index}"
puts "Occurrences of 'o': #{occurrences}"

# using number functions

my_number = 123.456

# round up 
rounded_up_number = my_number.ceil

# round down 
rounded_down_number = my_number.floor

integer_part = my_number.to_i

# sort
number_string = my_number.to_s
sorted_number_string = number_string.chars.sort.join

puts "Original number: #{my_number}"
puts "Rounded up: #{rounded_up_number}"
puts "Rounded down: #{rounded_down_number}"
puts "Integer part: #{integer_part}"
puts "Sorted number string: #{sorted_number_string}"
