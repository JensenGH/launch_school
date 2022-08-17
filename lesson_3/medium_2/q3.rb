def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My string looks like this now: ##{my_array}"

=begin

First we have a string object that is assigned to a local variable called my_string and an array
object that is assigned to the local variable my_array. On line 2 in our method we are using 
reassignment which creates a copy of the object that was passed in. This means that my_string and
a_string_param are now pointing to two different objects. This is why on line 10 when we output
my_string it still says "pumpkins". On line 3 we are using the shovel operator which is a mutating
method. Since this method is destructive, we use the original object that was passed in and append
a new element to the array. This is why on line 11 our output of my_array is now a new array with
the added element.

=end