def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  puts a_string_param
  an_array_param << "rutabaga"
  puts an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My string looks like this now: ##{my_array}"

=begin

It's important to remember that method definitions are self-contained with respect to local variables.
Local variables outisde of the method def are not visible inside of the method def, and vice versa.

On line 8, we invoke tricky method which passes a string and an array as arguments to the method.
On line 2, my_string is passed to a_string_param, and we use reassignment on our string objects.
Therefore, within the method, a_string_param now references a new string "pumpkinsrutabaga".
The original string object "pumpkins" referenced by my_string remains the same. It is not mutated.
On line 4, my_array is passed to my_array_param. my_array_param references the array object ["pumpkins"]
We append the string "rutabaga" to my_array_param, which pushes it to the array as a new element.
This is a destructive method, therefore my_array is also mutated outside of the method.
When we output the first message, the my_string variable remains the same, "pumpkins"
When we output the second message, the my_array variable now refereces the same array object, but mutated. ["pumpkins", "rutabaga"]

=end