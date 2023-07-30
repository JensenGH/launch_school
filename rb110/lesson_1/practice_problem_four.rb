# Practice problem 4: What is the return value of `each_with_object` in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {1 => "ant", 2 => "bear", 3 => "cat"}

# `each_with_object` returns the collection object that was passed in as an argument, therefore
# the following code returns a hash. Within the method, we create a new hash of key-value
# pairs where the first letter of each element in the array represents the key and each element
# in the array represents the value. Once this method is done iterating over the calling collection,
# `each_with_object` will return the object that was passed in to the method as an argument that
# contains all of the updates.