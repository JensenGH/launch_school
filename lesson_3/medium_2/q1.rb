=begin

Every object in Ruby has access to a method called object_id, which returns a numerical
value that uniquely identifies the object. This method can be used to determine whether
two variables are pointing to the same object.

Take a look at the following code and predict the output:

=end

a = "forty two"
b = "forty two"
c = a

puts a.object_id # => 880
puts b.object_id # => 900
puts c.object_id # => 880

# Solution:

# The local variable a and b share the same string value, but they are pointing to different
# objects. Local variable c gets initialized equal to a, meaning they now point to the same
# object. This is why they share the same object id.