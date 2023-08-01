# Practice problem 6: What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size
# => 11

# The return value from the following code is the integer `11`. The array `pop` method removes
# and returns the last element from an array, in this case it's the string 'caterpillar'. The
# array #size method is then being called on that string, which returns the integer `11`.