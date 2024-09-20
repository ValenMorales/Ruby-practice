# Proc Application Shorthand
# Use the Proc call shorthand when the called method is the only "\
# operation of a block. 

# bad
names.map { |name| name.upcase }

# good
names.map(&:upcase)
