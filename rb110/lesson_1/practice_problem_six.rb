# Practice problem 6: What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size
# => 11

# The return value from the following code is the integer 11. First, the array `pop` method
# is invoked on the array which removes the string 'caterpillar' from the array and then 
# returns it. The string `size` method returns an integer that represents how many characters
# are in the given string. When this method is invoked on the string 'caterpillar', the integer
# 11 is returned.