# Practice problem 9: What is the return value of `map` in the following code? Why?

{a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"] returns an array of objects returned by the block

# The return value of map is a new array that contains the values nil and 'bear' as elements.
# The #map method considers the return value of the block and uses it for transformation. On the
# first iteration, the value 'ant' evaluates as false and therefore returns nil. On the second
# iteration, the value 'bear' is evaluates as true and is therefore returned by map.

# When there are no if conditions that evaluate as true, the if statement itself returns nil.
# Example:

num = 5

if num > 6
  'hello'
end

# => nil