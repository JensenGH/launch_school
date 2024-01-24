# Practice problem 9:

# Write your own version of the Ruby Rails method # titleize implementation.

words = "the flintstones rock"

def titleize(words)
  result = words.split.map { |word| word.capitalize }
  result.join(' ')
end

p titleize(words) # => "The Flintstones Rock"