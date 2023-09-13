# Practice problem 1:

# Given the array below, turn this array into a hash where the names are the keys and
# the values are the positions in the array.

# Solution 1

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = Hash.new

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}




# Solution 2

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = Hash.new
counter = 0

loop do
  break if counter >= flintstones.size

  current_name = flintstones[counter]
  flintstones_hash[current_name] = counter
  counter += 1
end

p flintstones_hash # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}