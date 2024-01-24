# Practice problem 7:

# Create a hash that expresses the frequency with which each letter occurs in the string

# Solution:

statement = "The Flintstones Rock"
frequency_hash = {}
statement.chars.each do |char|
  frequency_hash[char] = statement.count(char) unless char == " "
end

p frequency_hash