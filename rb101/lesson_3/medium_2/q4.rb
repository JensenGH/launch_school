def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  puts a_string_param
  an_array_param = ['pumpkins', 'rutabaga']
  p an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin

On line 8, we invoke tricky method which passes a string and an array as arguments to the method.
On line 2, my_string is passed to a_string_param, and we append the string 'rutabaga'.
This is a mutating method. The object referenced by my_string is now mutated.
The original string object "pumpkins" referenced by my_string is now 'pumpkinsrutabaga'
On line 4, my_array is passed to my_array_param. my_array_param references the array object ['pumpkins']
We reassign the array ['pumpkins'] referenced by an_array_param to a new array ['pumpkins, 'rutabaga']
This is non-destructive, therefore my_array outisde of the method definition will not be mutated.
When we output the first message, the my_string variable references the same string object, but mutated.
When we output the second message, the my_array variable reamins the same, ['pumpkins']

=end