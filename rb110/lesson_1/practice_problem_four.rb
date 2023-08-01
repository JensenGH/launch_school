# Practice problem 4: What is the return value of `each_with_object` in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {a => "ant", b => "bear", c => "cat"}

# The return value of `each_with_object` in the code above is a new hash that contains the first
# character of each string from the array as a key, and each string itself as the value. The
# `each_with_object` method returns the object passed to it as an argument, in this case a hash. Within
# the block, we use this hash to set the first character from each string from the array
# as a key, and then sets the string itself as it's value pair. Then the method returns the new
# hash that contains all of the updates.