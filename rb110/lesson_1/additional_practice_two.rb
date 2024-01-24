# Practice Problem 2:

# Add up all the gaes from the Munster family hash.

# Solution 1 using the Hash#each method:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages_1 = 0

ages.each do |name, age|
  total_ages_1 += age
end

p total_ages_1

# Solution 2 using Hash#values

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages_2 = 0

ages.values.each do |age|
  total_ages_2 += age
end

p total_ages_2

# Solution 3 using Kernel#loop:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
munster_names = ages.keys
total_ages_3 = 0
counter = 0

loop do
  break if counter >= ages.size
  current_name = munster_names[counter]
  current_age = ages[current_name]

  total_ages_3 += current_age
  counter += 1
end

p total_ages_3