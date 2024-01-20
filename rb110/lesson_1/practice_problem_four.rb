# Practice problem 4: What is the return value of `each_with_object` in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# => {a => "ant", b => "bear", c => "cat"}

# The return value of `each_with_object` in this code is a new hash where the key is a string
# that represents the first character from each string element within the Array and each
# string element as the value. This is because this method takes a collection object as
# an argument and returns it with updates from the method's block once it is done iterating.