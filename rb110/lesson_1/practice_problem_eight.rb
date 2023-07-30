# Practice problem 8: How does `take` work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2) # => [1, 2] returns a new array of the first two elements
p arr # => [1, 2, 3, 4, 5] does not modify self

# The Array `take` method accepts an integer (n) as an argument and returns a new array containing
# the first (n) elements from the original array, starting at index 0. This method
# is non-destructive. We can test this in irb and check the Ruby docs.