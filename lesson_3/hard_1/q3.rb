=begin

Problem:
What will be printed by each of these code groups?

A) The output is:
"one is: one"
"two is: two"
"three is: three"
=> Reassignment doesn't mutate the original object that is passed in.

B) The output is:
"one is: one"
"two is: two"
"three is: three"
=> Reassignment doesn't mutate the original object that is passed in.

C) The output is:
"one is: two"
"two is: three" 
"three is: one"
=> gsub! is a destructive method and mutates the original object. When provided an argument with a
replacement string, the method will substitute the original string for the replacement.

=end

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"