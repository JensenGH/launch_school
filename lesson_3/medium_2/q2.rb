# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id # => 85
puts b.object_id # => 85
puts c.object_id # => 85

# In Ruby, Strings are mutable while Integers are not. Since Integers are immutable objects,
# their value can never be mutated. Each integer is assigned to it's own object id that will
# never change.