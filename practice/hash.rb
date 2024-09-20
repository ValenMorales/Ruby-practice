# using hashes

# create a hash
my_info = {"name" => "Valen", "age" => 21, "city" => "Manizales"}

# access values using keys
puts my_info["name"]
puts my_info["age"]

# modification
my_info["age"] = 22
puts my_info["age"]

# addition
my_info["job"] = "Engineer"
puts my_info["job"]

# deletion
my_info.delete("city")
puts my_info["city"]

puts my_info.include?("name")
puts my_info.size

my_info.each_key { |k| puts k }
hash.each_value { |v| puts v }
