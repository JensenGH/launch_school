# Practice problem 1: What is the return value of the `select` method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# => [1, 2, 3] returns a new array containing the elements from the original array

# Since the string 'hi' is the last evaluated expression from within the block, this will
# always be the return value. The string 'hi' is also considered a truthy value. The block
# returns a value for each iteration, which then gets evaluated by the #select method. Since
# the block returns a truthy value for each iteration, each element from the array is selected.
# The #select method returns a new array containing all three elements from the original array.