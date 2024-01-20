# Practice problem 6: What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size
# => 11

# The return value from the following code is the integer `11`. The array `pop` method distructively
# removes and returns the last element from an array, in this case it's the string 'caterpillar'.
# The Array#size method is then being chained to that return value and returns the length of
# the string, which is `11` characters long.