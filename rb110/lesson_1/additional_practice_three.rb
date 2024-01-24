# Practice Problem 3:

# In the ages hash, remove people with age 100 and greater.

# Solution 1 using Hash#delete:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.each do |name, age|
  if age >= 100
    ages.delete(name)
  end
end

p ages

# Solution 2 using Hash#delete_if:

ages_2 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages_2.delete_if { |name, age| age >= 100}

p ages_2

# Solution 3 using Hash#select:

ages_3 = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages_3.select! { |name, age| age < 100 }

p ages_3