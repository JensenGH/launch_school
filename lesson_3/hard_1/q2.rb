# What is the result of the last line of code below?

greetings = { a: "hi" }
informal_greeting = greetings[:a]
informal_greeting << " there"

puts informal_greeting
puts greetings

=begin

The hash object {a: "hi"} is referenced by a local variable called greetings. 
Then we initialize a local variable called informal_greeting
informal_greeting is equal to the value inside of the hash, "hi"
Note that informal_greeting and greetings[:a] are now both pointing to the same object, "hi"
On the next line we append ' there' to informal_greeting. This method is destructive.
Since informal_greeting referenced the same string object "hi" that our hash references, our hash is also mutated.
informal_greeting was pointing to the same value inside the greetings hash, when we added ' there' to
informal_greeting it was also added to the value of the hash.

=end