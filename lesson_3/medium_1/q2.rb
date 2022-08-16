=begin

The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)
Why is this and what are two possible ways to fix this?

Solution:
We receive a TypeError because we are trying to add two different data types, string
and integer. We need to convert the integer to a string using the to_s method or we 
can use string interpolation for 40 + 2 which converts to a string behind the scenes.

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 " is "#{40 + 2}"

=end

puts "the value of 40 + 2 is" (40 + 2).to_s
puts "the value of 40 + 2 is " + "#{40 + 2}"
