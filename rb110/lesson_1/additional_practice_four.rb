# Practice problem 4:

# Pick out the minimum age from the current Munster family hash:

# Solution using Array#each:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
all_ages = ages.values
minimum_age = all_ages.first

all_ages.each do |age|
  minimum_age = age if minimum_age > age
end

p minimum_age