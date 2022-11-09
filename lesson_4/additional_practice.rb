# Practice problem 1
# Given the array below, turn this array into a hash where the names are the keys and the values
# are the positions in the array.

# Solution 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
counter = 0

loop do
  break if counter >= flintstones.size
  
  current_element = flintstones[counter]
  hash[current_element] = counter
  
  counter += 1
end

p hash

# Solution 2

flintstones_hash = Hash.new
flintstones.each_with_index do | name, index| 
  flintstones_hash[name] = index
end

# Practice problem 2
# Add up all of the ages from the Munster family hash:

# Solution 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_age = 0
counter = 0

loop do
  break if counter >= ages.size

  values = ages.values
  current_value = values[counter]
  total_age += current_value

  counter += 1
end

p total_age

# Solution 2
p ages.values.inject(:+)

# Solution 3
total_age = 0
ages.each { |_, age| total_age += age }
p total_age

# Practice problem 3
# In the ages hash, remove people with age 100 and greater.

# Solution 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if { |key, value| value >= 100 }
p ages

# Solution 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
new_hash = ages.select { |key, value| value < 100 }
p new_hash

# Practice problem 4
# Pick out the minimum age from our current Munster family hash.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Solution:
p ages.values.min # => returns 10

# Practice problem 5
# In the array, find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Solution 1 
flintstones.each_with_index { |name, index| puts index if name.include?("Be") }

# Solution 2
flintstones.index { |name| name[0, 2] == "Be" }

# Practice problem 6
# Amend this array so that the names are all shortened to just the first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Solution 1
p flintstones.map { |name| name.slice(0, 3) }

# Solution 2
p flintstones.map { |name| name[0,3] }

# Practice problem 7
# Create a hash that expresses the frequency with which each letter occurs in this string

# Solution using a loop.

statement = "The Flintstones Rock"
frequency_hash = {}
counter = 0

loop do
  break if counter >= statement.size
  
  current_letter = statement[counter]
  letter_count = statement.count(current_letter)
  frequency_hash[current_letter] = letter_count

  counter += 1
end

p frequency_hash

# Practice problem 8
# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# When we modify an array while we are iterating over it, we are mutating the original object.
# Output is: 
# 1
# 3
# Output after #shift:
# [2, 3, 4]
# [3, 4]
# [4]
# []

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Output:
# 1
# 2
# Output after #pop:
# [1, 2, 3]
# [1, 2]
# [1]
# []

# Practice problem 9
# As we have seen previously we can use some built-in string methods to change the case of a string.
# A notably missing method is somethign provided in Rails, but not in Ruby itself... #titlesize. This
# method in Ruby on Rails creates a string that has each word capitalize as it would be in a title.
# For example:

words = "the flintstones rock"

# would be:

words = "The Flintstones Rock"

# Write your own version of the rails #titlesize implementation.
# #titleize method capitalizes all words and replaces some characters in the string to create
# a nicer looking title.

# Solution
sentence = "i love launch school"
p sentence.split.map! { |word| word.capitalize! }.join(" ") # => "I Love Launch School"

# Practice problem 10
# Given the munsters hash below:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster Family has an additional "age_group" key
# that has one of three values describing the age group the family member is in (kid, adult, or senior).
# Your solution should produce the hash below:

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# Solution

munsters.each do |name, info|
  case info["age"]
  when 0..18
    info["age_group"] = "kid"
  when 18..65
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end

p munsters