# Predicate Methods Suffix
# The names of predicate methods (methods that return a boolean value) "\
# should end in a question mark (i.e. Array#empty?). "\
# Methods that don’t return a boolean, shouldn’t end in a question mark.

# bad
def even(value)
end

# good
def even?(value)
end
