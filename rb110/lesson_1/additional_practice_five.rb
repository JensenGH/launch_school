# Practice problem 5:

# In the array below, find the index of the first name that starts with "Be"

# Solution 1:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  puts index if name[0, 2] == "Be"
end

# => 3

# Solution 2:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == "Be" } # => 3
