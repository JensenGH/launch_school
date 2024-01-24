# Practice problem 8:

# What happens when we modify an array while we are iterating over it?
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1
# 3
# => [3, 4]

# When we modify an array while we are iterating over it, this can ultimately mess up the
# iteration process and lead to unexpected behaviors. The output of this code would be the
# integers 1 and 3 on new lines and the return value would be an array containing the integers
# 3 and 4 as elements.

# On the first iteration, the integer 1 is output and removed from the array. On the second
# iteration, the array now looks like this: [2, 3, 4]. The integer 2 doesn't get output by the
# `p` method because it is now at index 0 which has already been iterated over and instead the
# integer 3 is output. However, on the second iteration the #shift method removes the integer 2
# from the array. Since #each has iterated two times and at this point the size of the array is
# 2, #each stops iterating.