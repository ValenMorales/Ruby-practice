# bad
def some_method(a, b = 5, c = 1)
  # body omitted
end

# good
def some_method(a, b: 5, c: 1)
  # body omitted
end
