# Practice Problem 1:

# Given the array below, turn this array into a hash where the names are the keys and the
# values are the positions in the array.

# Solution 1 using a Kernel#loop:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstone_hash = {}
counter = 0

loop do
  break if counter >= flintstones.size
  current_name = flintstones[counter]

  flintstone_hash[current_name] = counter
  counter += 1
end

p flintstone_hash

# Solution 2 using Array#each_with_index:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstone_hash_2 = {}
flintstones.each_with_index do |name, index|
  flintstone_hash_2[name] = index
end

p flintstone_hash_2