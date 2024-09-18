# Use parallel assignment when swapping 2 values.

# bad
tmp = x
x = y
y = tmp

# good
x, y = y, x
