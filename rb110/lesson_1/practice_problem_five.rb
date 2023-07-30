# Practice problem 5: What does `shift` do in the following code? How can we find out?

hash = {a: 'ant', b: 'bear'}
hash.shift # => [a:, "ant"] returns a two item array containing the key-value pair removed from hash
hash # => {:b=>"bear"} the local variable hash still points to the same hash that contains the updates.

# The Hash `shift` method removes the first key-value pair from a hash and returns it as a two
# item array. This method is destructive. We can find this out by testing in irb and checking
# the Ruby docs.