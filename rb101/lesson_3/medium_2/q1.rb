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

=begin

Here we have 3 local variables a, b, and c. Local variables a and b both share the same value "forty two".
Although they are identical, they do not point to the same object, meaning they do not share the same object id.
The local variable c is initialized to the object that is referenced by the local variable a.
This is why local variables a and c both share the same object id, they are pointing to the same object.