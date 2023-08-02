# Practice problem 2:

# Add up all of the ages from the Munster family hash:

# Solution 1:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = ages.values.sum
p total_ages # => 6174

# Solution 2:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0

ages.each_value do |num|
  total_ages += num
end

p total_ages # => 6174
