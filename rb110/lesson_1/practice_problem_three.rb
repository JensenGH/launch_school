# Practice problem 3: What is the return value of `reject` in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3]

# The return value of the `reject` method in the code above is a new array that contains
# all three elements from the original collection that `reject` is being called on. When the
# `reject` method is invoked on an array, it will return a new array containing elements for
# which the block returns false or nil. The last evaluated expression is `puts num`, which 
# returns `nil`. Therefore, the block's return value will always be nil.