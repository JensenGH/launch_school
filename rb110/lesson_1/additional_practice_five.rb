# Practice problem 5:

# In the array below, find the index of the first name that starts with "Be"

# Solution 1 using Array#each_with_index:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = 0
flintstones.each_with_index do |name, index|
  result = index if name[0, 2] == "Be"
end

p result

# Solution 2 using Array#each combined with Array#slice:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
counter = 0
find_index = 0
flintstones.each do |name|
  if name.slice(0, 2) == "Be"
    find_index = counter
  end
  counter += 1
end

p find_index