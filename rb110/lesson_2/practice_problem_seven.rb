# Practice problem 7

# Given this code, what would be the final values of `a` and `b`? Try to work this out without
# running the code

a = 2
b = [5, 8]
arr = [a, b] # => [2, [5, 8]]

arr[0] = 4 # => 4 element at index 0 of `arr` is now 4
arr[1][0] -= a # => 3 element at index 0 of the inner array is now 3

p a # => 2
p b # => [3, 8]
p arr # => [4, [3, 8]]