# Practice problem 7:

# Create a hash that expresses the frequency with which each letter occurs in the string

statement = "The Flintstones Rock"
frequency_hash = Hash.new

statement.chars do |char|
  frequency_hash[char] = statement.count(char)
end

p frequency_hash # => {"T"=>1, "h"=>1, "e"=>2, " "=>2, "F"=>1, "l"=>1, "i"=>1, "n"=>2, "t"=>2, "s"=>2, "o"=>2, "R"=>1, "c"=>1, "k"=>1}