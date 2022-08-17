def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

Similar to our last example, we now use the shovel operator to append "rutabaga" to a_string_param.
Since my_string and a_string_param are pointing to the same object, my_string variable gets mutated
outside of the method. The array on line 3 ["pumpkins", "rutabaga"] is a new object referenced by
an_array_param which doesn't point to the same object as my_array. Therefore my_array remains
the same when printed on line 11.


=end