# Practice problem 4:

# Pick out the minimum age from the current Munster family hash:

# Solution 1:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages = ages.min[1]
p ages # => 10

# Solution 2:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages = ages.values.min
p ages # => 10