# Practice problem 6:

# Write code that changes the array below so that all of the names are shortened to just the
# first three characters. Do not create a new array.

# Solution 1 using Array#slice:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
shortened_names = []
flintstones.each do |name|
  shortened_names << name.slice(0, 3)
end

p shortened_names

# Solution 2 using syntactical sugar for Array#slice:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
shortened_names_2 = []
flintstones.each do |name|
  shortened_names_2 << name[0, 3]
end

p shortened_names_2