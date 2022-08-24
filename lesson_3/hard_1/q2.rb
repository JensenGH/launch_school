# What is the result of the last line of code below?

greetings = { a: "hi" }
informal_greeting = greetings[:a]
informal_greeting << " there"

puts informal_greeting # => "hi there" shovel operator mutates greetings by appending "there" to the hash
puts greetings

=begin

The hash {a: "hi"} is referenced by a local variable called greetings. Then we initialize another
local variable 'informal_greeting' and set it equal to the result of accessing the value from the
hash. Note that informal_greeting and greetings[:a] are now both pointing to the same object. On the
next line we append ' there' to informal_greeting. This is method is destructive. Therefore when we
output informal_greeting it reads "hi there" and greetings has the updated hash { a: "hi there"}. Since
informal_greeting was pointing to the same value inside the greetings hash, when we added ' there' to
informal_greeting it was also added to the value of the hash.

=end