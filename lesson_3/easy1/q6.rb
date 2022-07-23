=begin
  
Starting with the string:

famous_words = "seven years ago..."

Show two different ways to put the expected "Four score and " in front of it.

=end

famous_words = "seven years ago..."

# Option 1:
"Four score and " << famous_words # Appending using the shovel operator

# Option 2:
"Four score and " + famous_words # Using string concatenation

# Option 3:
famous_words.prepend("Four score and ") # String#prepend which prepends given strings to string.

# Option 4:
"Four score and #{famous_words}" # String interpolation (uses to_s behind the scenes)