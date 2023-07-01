# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id # => 85
puts b.object_id # => 85
puts c.object_id # => 85

# In Ruby, integers are immutable objects, meaning you cannot mutate the value of an integer object.
# Since local variables a and b both point to the integer 42 object, they share the same object id.
# Local variable c is initalized to the object referenced by a, 42, so it also shares the same object id.
# All local variables are now pointing to the same object.