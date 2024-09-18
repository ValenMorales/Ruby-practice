# bad
def foo(x)
  def bar(y)
    # body omitted
  end

  bar(x)
end

# good - the same as the previous, but no bar redefinition on "\
# every foo call

def bar(y)
  # body omitted
end

def foo(x)
  bar(x)
end

# also good
def foo(x)
  bar = ->(y) { ... }
  bar.call(x)
end