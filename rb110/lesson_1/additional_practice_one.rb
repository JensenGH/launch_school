# Practice problem 1:

# Given the array below, turn this array into a hash where the names are the keys and
# the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = Hash.new

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}
