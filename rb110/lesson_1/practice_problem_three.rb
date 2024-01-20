# Practice problem 3: What is the return value of `reject` in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3]

# The return value of Array#reject is a new array containing all three elements from the
# collection in which `reject` is being called on. This is because this method returns
# a new array containing elements for which the block returns a falsy value. Since `puts num`
# returns `nil` which is a falsy value, each element is selected.