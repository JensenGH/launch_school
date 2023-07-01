# How could the following method be simplified without changing its return value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Solution when simplified:

def color_valid(color)
  color == "blue" || color == "green"
end

# Using a ternary operator.

color == "blue" || color == "green" ? true : false