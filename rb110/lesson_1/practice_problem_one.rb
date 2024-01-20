# Practice problem 1: What is the return value of the `select` method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3] returns a new array containing the elements from the original array

# The return value of the Array#select method is a new array that contains all three elements
# from the original collection that select is being called on. This is because the string
# `hi` is the last evaluated expression within the block which also returns a truthy
# value on each iteration.