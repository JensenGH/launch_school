# Practice problem 3:

# In the ages hash below, remove people with age 100 or greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if do |_, value|
  value >= 100
end

p ages # => {"Herman"=> 32, "Lily"=> 30, "Eddie"=> 10}

# Solution 2:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! do |_, value|
  value < 100
end

p ages # => {"Herman"=> 32, "Lily"=> 30, "Eddie"=> 10}