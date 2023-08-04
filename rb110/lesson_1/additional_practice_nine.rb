# Practice problem 9:

# Write your own version of the Ruby Rails method # titleize implementation.

words = "the flintstones rock"

def titleize(words)
  words.split.map { |word| word.capitalize }.join(' ')
end

p titleize(words) # => "The Flintstones Rock"