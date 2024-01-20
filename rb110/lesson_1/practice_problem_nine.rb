# Practice problem 9: What is the return value of `map` in the following code? Why?

{a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"]

# The return value of Hash#map in this code is a new Array that contains elements based on
# the block's return value. On the first iteration, the condition `value.size > 3` isn't met,
# therefore the if statement returns `nil` which is the block's return value for that iteration.
# On the second iteration, the string `bear` does meet the condition and so `bear` is the
# return value for that iteration.

# When there are no if conditions that evaluate as true, the if statement itself returns nil.
# Example:

num = 5

if num > 6
  'hello'
end

# => nil