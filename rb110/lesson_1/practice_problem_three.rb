# Practice problem 3: What is the return value of `reject` in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3]

# The last evaluated expression in the code is `puts num` which returns nil, therefore the block
# returns nil on each iteration. The `reject` method will selected elements from the array
# for which the block returns nil or false (in other words a falsey value). Since the block's
# return value is considered falsey, each element is selected and returned in a new array.