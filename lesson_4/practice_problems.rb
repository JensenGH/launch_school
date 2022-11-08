# Practice problem 1
# What is the return value of the #select method below and why?

[1, 2, 3].select do |num|
  num > 2
  'hi'
end

# Solution:
# #select returns a new array of all elements for which the given block returns a true value. 
# Since the string 'hi' always returns a truthy value, select will return new array containing
# all elements from the original array.

# Practice problem 2
# How does #count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Solution:
# If we are unsure how #count treats a block's return value, we can look in the Ruby docs for an example
# and description on how the method works.
# If a block is given, #count counts the number of elements for which the block returns a true value.
# Since #count considers the truthiness of the block's return value, it will only count the element
# if the block's return value evaluates as true.

# Practice problem 3
# What is the return value of #reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# Solution:
# The #reject method will return a new array containing the elements where the block's return value
# is falsey or NOT true. 
# Since puts returns nil and is our return value, the #reject method will select all elements.

# Practice problem 4
# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# Solution:
# #each_with_object iterates the given block for each element with an arbitrary object given, and
# returns the initially given object.
# In this code, we pass an empty hash as an argument to the each_with_object method.
# That object gets passed into the block and its updated return value is returned after each iteration.
# Once the method has iterated through the collection, it returns the initially given object with
# it's updates.

# Practice problem 5
# What does #shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
p hash.shift

# Solution:
# We can always look to the Ruby docs if we are unsure of how a method works.
# The #shift method permanently removes the first key-value pair from the given hash and returns it
# as a two-item array.
# If the hash is empty, it will return the hash's default value.
# Knowing this, we can determine that the code will output: [:a, 'ant']

# Practice problem 6
# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# Solution:
# Array's #pop method destructively removes the last element from an array and returns that element.
# In this example, we chain the #size method which returns the number of characters in a given string.
# Since 'caterpillar' is the last element in the array, it gets removed, returned, and the number of
# characters in that string are returned, which in this case is 11.

# Practice problem 7
# What is the block's return value in the following code? How is it determined? Also, what is the
# return value of #any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Solution:
# In the following code, the block's return value is determined by the last expression in the block,
# which is 'num.odd?' and returns a boolean value.
# The return value of #any? returns true if the block ever returns a value other than false or nil.
# Since on the first iteration, the integer 1 returns true, puts num is only invoked once, and the
# method returns true. Also, once the #any? method finds its first true value, the remaining iterations
# will stop, and the program will end.

# Practice problem 8
# How does #take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)
p arr

# Solution:
# We can always look to the Ruby docs or test code in irb if we want to find out if a method is destructive.
# Per Ruby doc, Array's #take method returns first 'n' elements from the array. If a negative number
# is given, raises an ArgumentError.
# After testing our code in irb, we can see that this method is NOT destructive, as it does not
# mutate our original object.

# Practice problem 9
# What is the return value of #map in the following code? Why?

{ a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

# Solution:
# Since the return value of #map is a new array, we can determine that the return value of #map in the
# following code is going to be a new array of elements that match the given criteria.
# Since the first element 'ant' does not meet the criteria of 'value.size > 3', this condition will
# evaluate as false and the value is never returned. 
# If a condition within an if statement never evaluates as true, it returns nil.

# Practice problem 10
# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Solution:
# The return value of #map is a new array with the results of running the block for every element once.
# On the first iteration, num > 1 returns false, the number 1 at index 0 is the return value for
# that iteration.
# After that, the block returns true and we use puts to output our number. Since puts returns nil,
# the last two iterations of the block return nil and our array looks like this: => [1, nil, nil]